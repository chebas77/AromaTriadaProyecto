@extends('recursos.base_admin')
@section('title', 'Gestión de Productos')

@section('content')
<div class="container mx-auto px-4 py-6">
    <h1 class="text-2xl font-bold mb-4">Gestión de Productos</h1>

    <!-- Filtro por categoría -->
    <form action="{{ route('admin.gestionarProductos') }}" method="GET" class="mb-6 flex items-center space-x-4">
        <div>
            <label for="categoria" class="block text-gray-700 font-bold mb-1">Filtrar por Categoría:</label>
            <select id="categoria" name="categoria" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
                <option value="">Todas</option>
                @foreach ($categorias as $categoria)
                <option value="{{ $categoria->id_categoria }}"
                    {{ request('categoria') == $categoria->id_categoria ? 'selected' : '' }}>
                    {{ $categoria->nombre }}
                </option>
                @endforeach
            </select>
        </div>
        <!-- Filtro por Disponibilidad -->
    <div>
        <label for="disponibilidad" class="block text-gray-700 font-bold mb-1">Filtrar por Disponibilidad:</label>
        <select id="disponibilidad" name="disponibilidad" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500">
            <option value="">Todas</option>
            <option value="1" {{ request('disponibilidad') == '1' ? 'selected' : '' }}>Disponible</option>
            <option value="0" {{ request('disponibilidad') == '0' ? 'selected' : '' }}>No Disponible</option>
        </select>
        
    </div>
    <div>
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">
                Filtrar
            </button>
            <a href="{{ route('admin.gestionarProductos') }}" class="bg-gray-500 text-white px-4 py-2 rounded hover:bg-gray-600">
                Restablecer
            </a>
        </div>
    </form>

    <!-- Tabla de productos -->
    <div class="overflow-x-auto bg-white shadow-md rounded-lg">
        <table class="w-full border-collapse border border-gray-300">
            <thead>
                <tr>
                    <th class="border px-4 py-2 bg-gray-100">Imagen</th>
                    <th class="border px-4 py-2 bg-gray-100">Nombre</th>
                    <th class="border px-4 py-2 bg-gray-100">Categoría</th>
                    <th class="border px-4 py-2 bg-gray-100">Descripción</th>
                    <th class="border px-4 py-2 bg-gray-100">Precio</th>
                    <th class="border px-4 py-2 bg-gray-100">Disponibilidad</th>
                    <th class="border px-4 py-2 bg-gray-100">Stock</th>
                    <th class="border px-4 py-2 bg-gray-100">Acciones</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($productos as $producto)
                <tr>
                    <td class="border px-4 py-2">
                        @if($producto->imagen)
                        <img src="{{ asset($producto->imagen) }}" alt="{{ $producto->nombre }}" class="h-12 w-12 object-cover">
                        @else
                        <span>Sin imagen</span>
                        @endif
                    </td>
                    <td class="border px-4 py-2">{{ $producto->nombre }}</td>
                    <td class="border px-4 py-2">{{ $producto->categoria->nombre ?? 'Sin Categoría' }}</td>
                    <td class="border px-4 py-2">{{ $producto->descripcion }}</td>
                    <td class="border px-4 py-2">S/{{ number_format($producto->precio, 2) }}</td>
                    <td class="border px-4 py-2">
                        <!-- Formulario para cambiar disponibilidad con botón de toggle -->
                        <form action="{{ route('admin.actualizarDisponibilidad', $producto) }}" method="POST">
                            @csrf
                            @method('PATCH')
                            <label class="inline-flex items-center cursor-pointer">
                                <div class="relative">
                                    <input type="checkbox" name="disponibilidad" onchange="this.form.submit()"
                                        class="hidden" {{ $producto->disponibilidad ? 'checked' : '' }} />
                                    <div class="w-12 h-6 bg-gray-300 rounded-full transition duration-300 ease-in-out 
                    {{ $producto->disponibilidad ? 'bg-green-500' : 'bg-red-500' }}"></div>
                                    <div class="dot absolute left-1 top-1 w-4 h-4 bg-white rounded-full transition-transform duration-300 
                    {{ $producto->disponibilidad ? 'transform translate-x-6' : 'transform translate-x-0' }}"></div>
                                </div>
                            </label>
                        </form>
                    </td>
                    <td class="border px-4 py-2">{{ $producto->stock }}</td>

                    <td class="border px-4 py-2">
                        <a href="{{ route('admin.editarProducto', $producto) }}" class="bg-yellow-500 text-white px-2 py-1 rounded">Editar</a>
                        <form action="{{ route('admin.eliminarProducto', $producto) }}" method="POST" class="inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="bg-red-500 text-white px-2 py-1 rounded mt-2">Eliminar</button>
                        </form>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="7" class="text-center py-4">No se encontraron productos.</td>
                </tr>
                @endforelse
            </tbody>

        </table>
    </div>
    <div class="mt-4">
    <!-- Paginación -->
    {{ $productos->links() }}
</div>


</div>
<a href="{{ route('admin.crearProducto') }}" class="bg-blue-500 text-white px-4 py-2 rounded mb-4 inline-block">Crear Producto</a>

@endsection