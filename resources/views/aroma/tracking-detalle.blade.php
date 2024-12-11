@extends('recursos.app')

@section('title', "Detalle del Envío #$tracking->id_tracking")

@section('content')
<section class="container mx-auto py-12 px-6">
    <h1 class="text-4xl font-bold text-violeta mb-8 text-center">📦 Detalle del Envío #{{ $tracking->id_tracking }}</h1>

    <!-- Modal para el cambio de estado -->
    @if($haCambiadoEstado)
    <div
        x-data="{ showModal: true }"
        x-show="showModal"
        class="fixed inset-0 flex items-center bg-white bg-opacity-50 justify-center z-50">
        <div class="bg-white rounded-lg shadow-lg max-w-lg w-full p-6 border border-gray-300">
            <h2 class="text-2xl font-bold text-violeta mb-4 flex items-center">
                <span class="mr-2">🚚</span> Estado Actualizado
            </h2>

            <p class="text-gray-800">
                El estado de tu pedido ahora es:
                <span class="font-bold">
                    {{ $tracking->estado_actual }}
                </span>.
            </p>
            <div class="mt-6 flex justify-end">
                <button
                    @click="showModal = false"
                    class="px-4 py-2 bg-violeta text-white rounded-lg hover:bg-violeta-dark transition">
                    Cerrar
                </button>
            </div>
        </div>
    </div>
    @endif

    <!-- Detalle del Pedido -->
    <div class="bg-white shadow-xl rounded-lg p-8 max-w-4xl mx-auto border border-gray-200">
        <!-- Información General -->
        <div class="mb-6 space-y-4">
            <p class="text-lg text-gray-800"><span class="font-semibold">📍 Origen:</span> {{ $tracking->origen }}</p>
            <p class="text-lg text-gray-800"><span class="font-semibold">📍 Destino:</span> {{ $tracking->destino }}</p>
            <p class="text-lg text-gray-800"><span class="font-semibold">📅 Fecha de Despacho:</span> {{ $tracking->fecha_despacho ?? 'Pendiente' }}</p>
            <p class="text-lg text-gray-800"><span class="font-semibold">📅 Fecha de Entrega:</span> {{ $tracking->fecha_entrega ? $tracking->fecha_entrega->format('Y-m-d') : 'Pendiente' }}</p>
            <p class="text-lg text-gray-800"><span class="font-semibold">⏰ Hora Programada:</span> {{ $tracking->hora_programada ?? 'Pendiente' }}</p>
        </div>
        <br>

        <div class="relative w-full h-4 rounded-full {{ $tracking->estado_actual === 'Cancelado' ? 'bg-red-300' : 'bg-gray-300' }}">
            @if($tracking->estado_actual === 'Cancelado')
            <!-- Barra de Progreso para Cancelado -->
            <div class="absolute top-0 left-0 h-4 bg-red-500 rounded-full transition-all duration-500" style="width: 100%;"></div>
            @else
            <!-- Barra de Progreso Normal -->
            <div
                class="absolute top-0 left-0 h-4 bg-violeta rounded-full transition-all duration-500"
                style="width: {{ $progressPercentage }}%;"></div>
            @endif



            @if($tracking->estado_actual !== 'Cancelado')
            <div class="flex justify-between mt-2 relative z-10">
                @foreach ($estados as $index => $estado)
                <div class="relative flex flex-col items-center">
                    <!-- Círculo del Estado -->
                    <div
                        class="w-10 h-10 flex items-center justify-center rounded-full border-2 
{{ $index <= array_search($tracking->estado_actual, $estados) ? 'bg-violeta text-white border-violeta' : 'bg-gray-100 text-gray-500 border-gray-300' }}">
                        @switch($estado)
                        @case('Iniciado')
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09Z" />
                        </svg>
                        @case('En Progreso')
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M3.375 19.5h17.25m-17.25 0a1.125 1.125 0 0 1-1.125-1.125M3.375 19.5h7.5c.621 0 1.125-.504 1.125-1.125m-9.75 0V5.625m0 12.75v-1.5c0-.621.504-1.125 1.125-1.125m18.375 2.625V5.625m0 12.75c0 .621-.504 1.125-1.125 1.125m1.125-1.125v-1.5c0-.621-.504-1.125-1.125-1.125m-16.5 3.75h7.5c.621 0 1.125-.504 1.125-1.125M12 15v-1.5m0 1.5c0 .621-.504 1.125-1.125 1.125H3.375m9.75 0a1.125 1.125 0 0 1-1.125-1.125V12m9.75 0c0 .621-.504 1.125-1.125 1.125H3.375c-.621 0-1.125-.504-1.125-1.125m1.125-3.75h7.5c.621 0 1.125.504 1.125 1.125M12 9v-1.5m0 1.5c0 .621-.504 1.125-1.125 1.125H3.375c-.621 0-1.125-.504-1.125-1.125m1.125-3.75h7.5c.621 0 1.125.504 1.125 1.125" />
                        </svg>
                        @case('Finalizado')
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>
                        @default
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>
                        @endswitch
                    </div>
                    <!-- Nombre del Estado -->
                    <span
                        class="text-sm mt-2 
{{ $index <= array_search($tracking->estado_actual, $estados) ? 'text-violeta font-semibold' : 'text-gray-500' }}">
                        {{ $estado }}
                    </span>
                </div>
                @endforeach
            </div>
            @endif


        </div>
        <br>

        <!-- Productos del Pedido -->
        @if($tracking->estado_actual !== 'Cancelado')
        <h2 class="text-2xl font-bold text-violeta mt-10 mb-6">🛒 Productos del Pedido</h2>
        <div class="overflow-x-auto">
            <table class="w-full table-auto border border-gray-200 rounded-lg shadow-sm">
                <thead>
                    <tr class="bg-violeta text-white">
                        <th class="border px-6 py-4 text-left">Producto</th>
                        <th class="border px-6 py-4 text-left">Cantidad</th>
                        <th class="border px-6 py-4 text-left">Tamaño</th>
                        <th class="border px-6 py-4 text-left">Dedicatoria</th>
                        <th class="border px-6 py-4 text-left">Precio</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($productos as $producto)
                    <tr class="hover:bg-gray-100 transition">
                        <td class="border px-6 py-4 text-gray-800">{{ $producto->producto->nombre }}</td>
                        <td class="border px-6 py-4 text-gray-800">{{ $producto->cantidad }}</td>
                        <td class="border px-6 py-4 text-gray-800">{{ $producto->tamaño ?? 'N/A' }}</td>
                        <td class="border px-6 py-4 text-gray-800">{{ $producto->dedicatoria ?? 'Sin dedicatoria' }}</td>
                        <td class="border px-6 py-4 text-right text-gray-800">S/ {{ number_format($producto->precio_unitario, 2) }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        @if($servicios->isNotEmpty())
        <h2 class="text-2xl font-bold text-violeta mt-10 mb-6">🛠️ Servicios Adicionales</h2>
        <div class="overflow-x-auto">
            <table class="w-full table-auto border border-gray-200 rounded-lg shadow-sm">
                <thead>
                    <tr class="bg-violeta text-white">
                        <th class="border px-6 py-4 text-left">Servicio</th>
                        <th class="border px-6 py-4 text-left">Cantidad</th>
                        <th class="border px-6 py-4 text-left">Precio Unitario</th>
                        <th class="border px-6 py-4 text-left">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($servicios as $servicio)
                    <tr class="hover:bg-gray-100 transition">
                        <td class="border px-6 py-4 text-gray-800">{{ $servicio->servicio->nombre ?? 'N/A' }}</td>
                        <td class="border px-6 py-4 text-gray-800 text-center">{{ $servicio->cantidad ?? 0 }}</td>
                        <td class="border px-6 py-4 text-right text-gray-800">
                            S/ {{ number_format($servicio->servicio->precio ?? 0, 2) }}
                        </td>
                        <td class="border px-6 py-4 text-right text-gray-800">
                            S/ {{ number_format(($servicio->cantidad ?? 0) * ($servicio->servicio->precio ?? 0), 2) }}
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        @endif



        <!-- Total del Pedido -->
        <div class="mt-10 text-right">
            @php
            $totalProductos = $productos->sum(fn($producto) => $producto->cantidad * $producto->precio_unitario);
            $totalServicios = $servicios->sum(fn($servicio) => $servicio->cantidad * $servicio->precio_unitario);
            $totalPedido = $totalProductos + $totalServicios;
            @endphp
            <h2 class="text-2xl font-bold text-red-600">💰 Total del Pedido: S/ {{ number_format($totalPedido, 2) }}</h2>
        </div>
        @else
        <h2 class="text-2xl font-bold text-red-600 mt-10 mb-6 text-center">❌ Este pedido ha sido cancelado.</h2>
        @endif

        <a href="{{ url()->previous() }}"
            class="block bg-violeta text-white text-center py-3 rounded mt-8 shadow-lg hover:bg-violeta-dark transition">
            Volver
        </a>

    </div>
</section>
@endsection