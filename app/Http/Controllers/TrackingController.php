<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Pedido;
use App\Models\Venta;
use App\Models\DetallePedido;
use App\Models\Tracking;
use Illuminate\Http\Request;
use Illuminate\Database\Query\Expression;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TrackingController extends Controller
{

    public function mostrar(Request $request)
    {
        // Verificar si el usuario está autenticado
        if (!Auth::check()) {
            return redirect()->route('aroma.inicioSesion')->with('error', 'Debes iniciar sesión para ver el tracking.');
        }

        // Obtener el usuario autenticado
        $user = Auth::user();

        // Construir la consulta base para tracking asociado al usuario
        $query = Tracking::whereHas('venta', function ($subQuery) use ($user) {
            $subQuery->where('id_usuario', $user->id);
        });

        // Si se busca por un ID de tracking
        if ($request->filled('id_tracking')) {
            $query->where('id_tracking', $request->input('id_tracking'));
        } else {
            // Por defecto, mostrar solo los tracking de las últimas 48 horas
            $query->where('created_at', '>=', now()->subHours(48));
        }

        // Obtener los resultados, ordenados de más reciente a más antiguo
        $tracking = $query->orderBy('id_tracking', 'desc')->get();

        // Mostrar la vista con los datos del tracking
        return view('aroma.tracking', compact('tracking'));
    }




    // Función para indexar y filtrar los trackings para admin
    public function indexAdmin(Request $request)
    {
        // Obtener los términos de búsqueda y el filtro de estado
        $search = $request->input('search');
        $estado = $request->input('estado');

        // Consulta para filtrar los trackings
        $trackings = Tracking::when($search, function ($query, $search) {
            return $query->where('id_tracking', 'like', '%' . $search . '%');
        })
            ->when($estado, function ($query, $estado) {
                return $query->where('estado_actual', $estado);
            })
            ->orderByDesc('id_tracking')  // Ordenar por ID de Tracking descendente
            ->paginate(10);  // Mostrar 10 resultados por página


        return view('admin.tracking.index', compact('trackings'));
    }

    // Mostrar y gestionar el tracking específico de un pedido
    public function gestionarTracking($id)
    {
        $tracking = Tracking::findOrFail($id);

        // Obtener los valores del ENUM desde la base de datos
        $type = DB::select("SHOW COLUMNS FROM tracking WHERE Field = 'estado_actual'")[0]->Type;

        // Extraer los valores de ENUM y convertirlos a un array
        preg_match('/^enum\((.*)\)$/', $type, $matches);
        $enumValues = array_map(function ($value) {
            return trim($value, "'");
        }, explode(',', $matches[1]));

        return view('admin.tracking.show', compact('tracking', 'enumValues'));
    }
    public function detalleAdmin($id)
    {
        // Obtener el tracking con sus relaciones necesarias
        $tracking = Tracking::with(['venta.usuario', 'venta.detalles.producto', 'venta.detalles.servicio'])->findOrFail($id);

        // Retornar la vista de detalles del tracking
        return view('admin.tracking.detalle', compact('tracking'));
    }
    // Actualizar el estado del tracking
    public function updateTracking(Request $request, $id)
    {
        $tracking = Tracking::findOrFail($id);

        // Validar la entrada
        $request->validate([
            'estado_actual' => 'required|string|in:En proceso,Enviado,Entregado,Cancelado',
            'fecha_despacho' => 'nullable|date_format:Y-m-d\TH:i', // Validar formato de datetime-local
        ]);

        // Actualizar los datos del tracking
        $tracking->update([
            'estado_actual' => $request->estado_actual,
            'fecha_despacho' => $request->fecha_despacho ? \Carbon\Carbon::parse($request->fecha_despacho) : null,
        ]);

        return redirect()->route('admin.tracking.index')->with('success', 'El tracking ha sido actualizado exitosamente.');
    }

    // Confirmar despacho de un pedido
    public function confirmarDespacho($id)
    {
        $tracking = Tracking::findOrFail($id);

        // Actualizar la fecha de despacho con la hora actual
        $tracking->update([
            'fecha_despacho' => now(),
        ]);

        return redirect()->route('admin.tracking.show', $id)->with('success', 'La fecha de despacho ha sido registrada exitosamente.');
    }

    public function detalle($id)
    {
        // Obtén el registro del tracking
        $tracking = Tracking::findOrFail($id);
    
        // Verificar si el estado ha cambiado (almacenando el estado anterior en la sesión)
        $estadoAnterior = session('estado_anterior_' . $id, null);
        $haCambiadoEstado = $estadoAnterior && $estadoAnterior !== $tracking->estado_actual;
    
        // Actualizar el estado en la sesión para futuros accesos
        session(['estado_anterior_' . $id => $tracking->estado_actual]);
    
        // Obtén los productos relacionados al pedido
        $productos = DetallePedido::where('id_pedido', $tracking->id_venta)
            ->whereNotNull('id_producto')
            ->with('producto') // Carga la relación del producto
            ->get();
    
        // Obtén los servicios relacionados al pedido
        $servicios = DetallePedido::where('id_pedido', $tracking->id_venta)
            ->whereNotNull('id_servicio')
            ->with('servicio') // Carga la relación del servicio
            ->get();
    
        // Estados posibles del tracking
        $estados = ['Preparando envío', 'En proceso', 'Enviado', 'Entregado'];
    
        // Calcula el porcentaje de progreso basado en el estado actual
        $progressPercentage = (array_search($tracking->estado_actual, $estados) + 1) / count($estados) * 100;
    
        // Renderiza la vista con los datos necesarios
        return view('aroma.tracking-detalle', [
            'tracking' => $tracking,
            'productos' => $productos,
            'servicios' => $servicios,
            'estados' => $estados,
            'haCambiadoEstado' => $haCambiadoEstado,
            'progressPercentage' => $progressPercentage,
        ]);
    }
    


    public function verTracking($id)
    {
        // Obtener el tracking con sus relaciones necesarias
        $tracking = Tracking::with(['venta.usuario', 'venta.detalles.producto', 'venta.detalles.servicio'])->findOrFail($id);

        // Retornar la vista de detalles del tracking
        return view('admin.tracking-detalle', compact('tracking'));
    }
}
