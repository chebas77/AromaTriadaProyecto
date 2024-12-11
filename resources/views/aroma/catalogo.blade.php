@extends('recursos.app')
@section('title', 'Catálogo de Productos')

@section('content')
<!-- Store Banner -->
<section class="bg-black py-12 relative">
  <!-- Imagen de fondo -->
  <div 
    class="absolute inset-0 bg-cover bg-center opacity-50"
    style="background-image: url({{ asset('images/fondo.jpg') }});">
  </div>
  <!-- Contenido -->
  <div class="container mx-auto text-center relative z-10">
    <h1 class="text-4xl font-bold mb-2 text-crema3">TIENDA</h1>
    <p class="text-crema3 text-lg font-semibold">
      Bienvenido a nuestra tienda, donde encontrarás una selección exclusiva de productos y servicios para tus eventos especiales.
      Desde deliciosos postres y tortas hasta servicios personalizados como decoración y catering. Explora nuestro catálogo y descubre cómo podemos hacer de tu celebración algo único.
    </p>
  </div>
</section>

<!-- Main Content -->
<section class="container mx-auto py-12 px-4 md:px-6 flex flex-col md:flex-row gap-8 bg-gradient-to-br from-white to-gray-50 border-2 border-gray-100 mt-10 rounded-3xl shadow-2xl">
  <!-- Sidebar -->
  <aside class="md:w-1/4">
    <h3 class="text-3xl font-extrabold mb-6 text-violeta tracking-tight">CATEGORÍAS</h3>
    <form action="{{ route('aroma.catalogo') }}" method="GET" class="bg-white p-6 rounded-2xl shadow-lg border border-gray-100 transition-all duration-300 hover:shadow-xl">
      <ul class="space-y-3">
        @foreach ($categorias as $categoria)
        <li>
          <label class="flex items-center cursor-pointer group">
            <input
              type="checkbox"
              name="categorias[]"
              value="{{ $categoria->id_categoria }}"
              class="mr-3 w-5 h-5 text-violeta rounded focus:ring-violeta focus:ring-2 transition-all duration-200 
                     checked:bg-violeta checked:border-transparent"
              {{ in_array($categoria->id_categoria, request('categorias', [])) ? 'checked' : '' }}>
            <span class="text-gray-700 group-hover:text-violeta transition-colors duration-200">
              {{ $categoria->nombre }}
            </span>
          </label>
        </li>
        @endforeach
      </ul>
      <button
        type="submit"
        class="mt-6 w-full bg-violeta hover:bg-purple-700 text-white px-4 py-3 rounded-lg font-bold 
               transition-all duration-300 ease-in-out transform hover:scale-105 focus:outline-none 
               focus:ring-2 focus:ring-purple-500 focus:ring-opacity-50">
        Filtrar
      </button>
    </form>
  </aside>

  <!-- Product and Service Grid -->
  <div class="md:w-3/4">
    <h2 class="text-2xl font-semibold mb-8 text-violeta flex items-center">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-3 text-violeta" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16" />
      </svg>
      Mostrando {{ $totalResultados }} {{ $totalResultados === 1 ? 'resultado' : 'resultados' }}
    </h2>

    @if ($totalResultados === 0)
    <div class="bg-gray-100 border-l-4 border-violeta p-4 rounded-r-lg">
      <p class="text-gray-700">No hay productos ni servicios en esta categoría.</p>
    </div>
    @else

    <!-- Productos -->
    <div class="mb-12">
      <h3 class="text-2xl text-violeta font-bold mb-6 flex items-center">
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-3 text-violeta" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
        </svg>
        PRODUCTOS
      </h3>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        @foreach($productos as $producto)
        <div class="bg-white shadow-lg rounded-2xl overflow-hidden border border-gray-100 
                    transform transition-all duration-300 hover:shadow-2xl hover:scale-105">
          <div class="relative h-48 overflow-hidden group">
            <img src="{{ $producto->imagen ? asset($producto->imagen) : asset('images/placeholder.png') }}"
              alt="{{ $producto->nombre }}" 
              class="h-full w-full object-cover transition-transform duration-300 group-hover:scale-110">
            <div class="absolute inset-0 bg-black opacity-0 group-hover:opacity-20 transition-opacity duration-300"></div>
          </div>
          <div class="p-4">
            <h4 class="text-xs uppercase tracking-wide text-gray-500 mb-1">
              {{ $producto->categoria->nombre ?? 'Sin categoría' }}
            </h4>
            <p class="text-gray-800 font-bold text-lg mb-2">{{ $producto->nombre }}</p>
            <p class="text-violeta font-extrabold text-xl mb-4">S/ {{ number_format($producto->precio, 2) }}</p>

            <!-- Botón que redirige al detalle del producto -->
            <a href="{{ route('detalle.item', ['tipo' => 'producto', 'id' => $producto->id_producto]) }}"
              class="bg-violeta text-white px-6 py-3 font-bold hover:bg-purple-700 w-full rounded-lg 
                     inline-block text-center transition-all duration-300 transform hover:scale-105 
                     focus:outline-none focus:ring-2 focus:ring-purple-500 focus:ring-opacity-50">
              Ir a comprar
            </a>
          </div>
        </div>
        @endforeach
      </div>
    </div>
    @endif
  </div>
</section>
@endsection