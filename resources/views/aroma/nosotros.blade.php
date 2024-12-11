@extends('recursos.app')
@section('title', 'Nosotros')

@section('content')

<!-- Hero Section -->
<section class="relative bg-gray-200 py-20 flex items-center justify-center" style="background-image: url('{{ asset('images/fondo.jpg') }}'); background-size: cover; background-position: center;">
  <!-- Contenido encima de la imagen -->
  <div class="absolute inset-0 bg-black opacity-50"></div>
  <h1 class="relative text-4xl font-bold text-center text-white z-10">
    Nuestra Historia
  </h1>
</section>

<!-- About Section -->
<section class="container mx-auto py-12 px-6 text-center">
  <h2 class="text-3xl font-bold mb-4 text-violeta">¿Quiénes somos y cómo ayudamos a nuestros clientes?</h2>
  <p class="text-gray-700 mb-6 text-lg">
    En Aroma Triada, nos dedicamos a ofrecer una experiencia única a nuestros clientes a través de productos artesanales de alta calidad y servicios de catering excepcionales. Creemos en la importancia de cada detalle para hacer de tus celebraciones momentos inolvidables. Desde deliciosos postres y tortas hasta servicios de catering personalizados, estamos comprometidos a brindar un servicio que supere tus expectativas.
  </p><br>
  <a href="{{ route('aroma.preguntas') }}" class="bg-violeta text-white px-8 py-4 font-bold rounded-xl hover:bg-gray-800">¿Tienes Dudas?</a>
</section>

<!-- Team Section -->
<section class="container mx-auto py-12 px-6 text-center">
  <h3 class="text-3xl font-bold mb-4 text-violeta">Nuestro Equipo</h3>
  <p class="text-gray-700 mb-8 text-lg">
    Nuestro equipo está conformado por profesionales apasionados que trabajan arduamente para asegurar la mejor calidad en cada pedido. Desde la cocina hasta el servicio al cliente, cada miembro de nuestro equipo contribuye con su talento y dedicación.
  </p>
  <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
    <!-- Team Member Card -->
    <div class="bg-white shadow p-4 rounded pb-16">
      <div class="bg-gray-300 h-full mb-2 flex items-center justify-center">
        <img src="{{ asset('images/equipo2.webp') }}" alt="Chef de Repostería" class="h-full object-cover rounded">
      </div>
      <h4 class="text-lg font-bold">Chef de Repostería</h4>
      <p class="text-gray-700">Ana Rodríguez</p>
    </div>

    <div class="bg-white shadow p-4 rounded pb-16">
      <div class="bg-gray-300 h-full mb-2 flex items-center justify-center">
        <img src="{{ asset('images/equipo1.webp') }}" alt="Especialista en Catering" class="h-full object-cover rounded">
      </div>
      <h4 class="text-lg font-bold">Especialista en Catering</h4>
      <p class="text-gray-700">Luis García</p>
    </div>

    <div class="bg-white shadow p-4 rounded pb-16">
      <div class="bg-gray-300 h-full mb-2 flex items-center justify-center">
        <img src="{{ asset('images/equipo3.webp') }}" alt="Gerente de Marketing" class="h-full object-cover rounded">
      </div>
      <h4 class="text-lg font-bold">Gerente de Marketing</h4>
      <p class="text-gray-700">María López</p>
    </div>

    <div class="bg-white shadow p-4 rounded pb-16">
      <div class="bg-gray-300 h-full mb-2 flex items-center justify-center">
        <img src="{{ asset('images/equipo4.webp') }}" alt="Atención al Cliente" class="h-full object-cover rounded">
      </div>
      <h4 class="text-lg font-bold">Atención al Cliente</h4>
      <p class="text-gray-700">Carlos Pérez</p>
    </div>
  </div>
</section>

</div>

<!-- GALERIA DE FOTOS -->
<section class="bg-crema1 py-16">
    <div class="container mx-auto">
        <h2 class="text-3xl font-bold text-violeta text-center mb-8 font-fascinate">NUESTRO CONCEPTO</h2>
       
        <!-- Collage -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
            <!-- Imagen grande -->
            <div class="relative group overflow-hidden">
                <img src="{{ asset('images/nosotros3.webp') }}" alt="Foto 1" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
            </div>


            <!-- Dos imágenes verticales -->
            <div class="grid grid-rows-2 gap-4">
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros1.webp') }}" alt="Foto 2" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros2.webp') }}" alt="Foto 3" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
            </div>


            <!-- Imagen mediana -->
            <div class="relative group overflow-hidden">
                <img src="{{ asset('images/nosotros4.webp') }}" alt="Foto 4" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
            </div>


            <!-- Dos imágenes horizontales -->
            <div class="grid grid-cols-2 gap-4">
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros7.webp') }}" alt="Foto 5" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros8.webp') }}" alt="Foto 6" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
            </div>


            <!-- Imagen grande al final -->
            <div class="relative group overflow-hidden">
                <img src="{{ asset('images/nosotros6.webp') }}" alt="Foto 7" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
            </div>


            <!-- Dos imágenes horizontales -->
            <div class="grid grid-cols-2 gap-4">
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros9.webp') }}" alt="Foto 5" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
                <div class="relative group overflow-hidden">
                    <img src="{{ asset('images/nosotros5.webp') }}" alt="Foto 6" class="w-full h-full object-cover rounded shadow-md transition-transform duration-300 group-hover:scale-110">
                </div>
            </div>
        </div>
    </div>
</section>
@endsection