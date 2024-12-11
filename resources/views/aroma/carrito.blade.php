@extends('recursos.app')


@section('title', 'Carrito de Compras')


@section('content')
<section class="container mx-auto py-20 px-8 mt-10 bg-crema1 rounded-3xl shadow-2xl">
    <h1 class="text-5xl font-extrabold text-center text-violeta mb-12 tracking-wide">CARRITO DE COMPRAS</h1>


    <!-- Productos en el Carrito -->
    <section class="mb-16">
        <h2 class="text-3xl font-semibold text-center text-violeta mb-10">Productos en tu Carrito</h2>

        @if(session('carrito') && count(session('carrito')) > 0)
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
        @foreach (session('carrito') as $key => $item)
            @if ($item['tipo'] === 'producto')
            <div class="bg-white rounded-2xl shadow-lg overflow-hidden transform transition-all duration-300 hover:shadow-2xl hover:-translate-y-2">
                <div class="relative h-56 w-full">
                    @php
                        $producto = \App\Models\Producto::find($item['id']);
                    @endphp
                    <img src="{{ $producto->imagen ? asset($producto->imagen) : asset('images/placeholder.png') }}"
                         alt="{{ $producto->nombre }}"
                         class="absolute inset-0 w-full h-full object-cover">
                    
                    <form action="{{ route('carrito.eliminar') }}" method="POST" class="absolute top-4 right-4 z-10">
                        @csrf
                        @method('DELETE')
                        <input type="hidden" name="id" value="{{ $item['id'] }}">
                        <button type="submit" class="bg-violeta text-white p-2 rounded-full hover:bg-red-600 transition-colors duration-300">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                            </svg>
                        </button>
                    </form>
                </div>
                
                <div class="p-6">
                    <div class="flex justify-between items-center mb-4">
                        <h3 class="text-2xl font-bold text-violeta">{{ $item['nombre'] ?? 'Producto sin nombre' }}</h3>
                        <span class="text-xl font-semibold text-violeta">S/ {{ number_format($item['precio_unitario'], 2) }}</span>
                    </div>
                    
                    <div class="space-y-2 mb-4">
                        <p class="text-gray-600">
                            <span class="font-medium text-violeta">Tamaño:</span> 
                            {{ $item['tamano'] ?? 'No especificado' }}
                        </p>
                        
                        @if ($item['dedicatoria'])
                            <p class="text-gray-600">
                                <span class="font-medium text-violeta">Dedicatoria:</span> 
                                {{ $item['dedicatoria'] }}
                            </p>
                        @endif
                    </div>
                    
                    <div class="flex justify-between items-center bg-gray-100 rounded-lg p-3">
                        <span class="text-lg font-semibold text-gray-700">Cantidad: {{ $item['cantidad'] }}</span>
                        <p class="text-2xl font-bold text-violeta">
                            S/ {{ number_format(($item['precio_unitario'] ?? 0) * $item['cantidad'], 2) }}
                        </p>
                    </div>
                </div>
            </div>
            @endif
        @endforeach
    </div>
@else
    <div class="text-center bg-gray-100 rounded-2xl p-10">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-24 w-24 mx-auto text-gray-400 mb-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
        </svg>
        <p class="text-2xl text-gray-600">No tienes productos en tu carrito.</p>
    </div>
@endif
    </section>

    <!-- Servicios en el Carrito -->
<section>
    <h2 class="text-3xl font-semibold text-center text-violeta mb-12">Servicios en tu Carrito</h2>

    @if(session('carrito') && count(session('carrito')) > 0)
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12">
        @foreach (session('carrito') as $key => $item)
            @if ($item['tipo'] === 'servicio')
            <div class="flex bg-white rounded-2xl shadow-xl p-6 hover:shadow-2xl transform hover:scale-105 transition duration-500 ease-in-out">
                <div class="flex-grow">
                    <h3 class="text-3xl font-bold text-violeta">{{ $item['nombre'] ?? 'Servicio sin nombre' }}</h3>
                    <p class="font-bold text-gray-700 mt-4">Precio: S/ {{ number_format($item['precio_unitario'], 2) }}</p>
                    <p class="text-violeta font-semibold text-2xl mt-4">Total: S/ {{ number_format(($item['precio_unitario'] ?? 0) * $item['cantidad'], 2) }}</p>
                    
                    <!-- Mostrar la cantidad solo si es "Mozo" -->
                    @if (strtolower($item['nombre']) === 'mozo')
                    <p class="text-violeta font-semibold text-2xl mt-4">Cantidad: {{ $item['cantidad'] }}</p>
                    @endif
                </div>
               
                <form action="{{ route('carrito.eliminar') }}" method="POST" class="flex-shrink-0">
                    @csrf
                    @method('DELETE')
                    <input type="hidden" name="id" value="{{ $item['id'] }}">
                    <button type="submit" class="bg-violeta text-white px-8 py-4 rounded-full hover:bg-red-700 transition duration-300">
                        Eliminar
                    </button>
                </form>
            </div>
            @endif
        @endforeach
    </div>
    @else
    <p class="text-center text-violeta mt-10 text-lg">No tienes servicios en tu carrito.</p>
    @endif
</section>



    <!-- Servicios Disponibles -->
<section class="mt-20">
    <h2 class="text-3xl font-semibold text-center text-violeta mb-12">Servicios Disponibles</h2>
   
    <form id="servicios-form" action="{{ route('carrito.agregarServicios') }}" method="POST">
        @csrf
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-12 mt-6">
            @foreach ($servicios as $servicio)
                <label class="bg-white p-8 rounded-xl shadow-lg hover:shadow-2xl transform hover:scale-105 transition duration-500 ease-in-out cursor-pointer flex flex-col items-center space-y-6 text-center">
                    <input 
                        type="checkbox" 
                        name="servicios[]" 
                        value="{{ $servicio->id_servicio }}" 
                        class="mb-6 h-6 w-6 text-violeta focus:ring-indigo-500">
                    <h3 class="text-2xl font-semibold text-violeta">{{ $servicio->nombre }}</h3>
                    <p class="text-lg text-gray-600">S/ {{ number_format($servicio->precio, 2) }}</p>
                </label>
            @endforeach
        </div>

        <!-- Campo adicional si se selecciona "Mozo" -->
        <div id="mozo-options" class="mt-8 hidden">
            <label for="cantidad_mozos" class="block text-gray-700 text-xl">Cantidad de Mozos:</label>
            <input 
                type="number" 
                name="cantidad_mozos" 
                id="cantidad_mozos" 
                min="1" 
                value="1" 
                class="border-2 rounded-lg px-6 py-3 text-xl text-gray-800 bg-gray-50 focus:ring-2 focus:ring-indigo-600">
        </div>

        <!-- Botón para agregar servicios al carrito -->
        <div class="flex justify-center mt-10">
            <button type="submit" class="bg-violeta text-white px-10 py-5 rounded-full text-xl hover:bg-gray-700 transition duration-300">
                Agregar Servicios al Carrito
            </button>
        </div>
    </form>

    <!-- Botón para confirmar carrito -->
    <div class="mt-10">
        <form id="confirmar-carrito-form" action="{{ route('carrito.confirmar') }}" method="POST">
            @csrf
            <button type="submit" class="bg-violeta text-white px-10 py-5 rounded-full w-full text-2xl hover:bg-green-600 transition duration-300">
                Confirmar Carrito
            </button>
        </form>
    </div>

    <!-- Botón para retroceder -->
    <div class="mt-10">
        <a href="{{ route('aroma.catalogo') }}" class="bg-gray-500 text-white px-8 py-4 rounded-full text-lg font-semibold hover:bg-violeta transition duration-300">
            Retroceder
        </a>
    </div>
</section>


<script>
    // Mostrar opciones de cantidad de mozos cuando se selecciona "Mozo"
    const checkboxes = document.querySelectorAll('input[name="servicios[]"]');
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', () => {
            const mozoOptions = document.getElementById('mozo-options');
            if (checkbox.checked && checkbox.parentElement.querySelector('h3').textContent.trim().toLowerCase() === 'mozo') {
                mozoOptions.classList.remove('hidden');
            } else if (![...checkboxes].some(cb => cb.checked && cb.parentElement.querySelector('h3').textContent.trim().toLowerCase() === 'mozo')) {
                mozoOptions.classList.add('hidden');
            }
        });
    });
</script>
@endsection