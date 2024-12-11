<div class="bg-white flex flex-col">
    <!-- Header -->
    <header class="bg-violeta text-black w-full">
        <!-- Banner de promociones -->
        <!-- Banner Carrusel -->
<div id="promoCarousel" class="bg-crema1 text-black text-center py-5 text-sm -ml-2 overflow-hidden relative flex items-center justify-center font-semibold">
    <div class="promo-slides relative w-full">
        <div class="slide active absolute top-0 left-0 w-full flex items-center justify-center">
            <span>APROVECHA LOS NUEVOS LANZAMIENTOS POR ÉPOCAS NAVIDEÑAS!!</span>
        </div>
        <div class="slide absolute top-0 left-0 w-full flex items-center justify-center">
            <span>DESCUENTOS ESPECIALES EN PRODUCTOS PROXIMAMENTE</span>
        </div>
        <div class="slide absolute top-0 left-0 w-full flex items-center justify-center">
            <span>ENDULZA TUS DÍAS CON AROMATRIADA</span>
        </div>
    </div>
</div>

<style>
#promoCarousel .promo-slides {
    height: 100%;
}
#promoCarousel .slide {
    opacity: 0;
    transition: opacity 0.5s ease-in-out;
}
#promoCarousel .slide.active {
    opacity: 1;
}
#promoCarousel .slide span {
    text-align: center;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const slides = document.querySelectorAll('#promoCarousel .slide');
    let currentSlide = 0;

    function nextSlide() {
        // Remove active class from current slide
        slides[currentSlide].classList.remove('active');
        
        // Move to next slide, loop back to start if at end
        currentSlide = (currentSlide + 1) % slides.length;
        
        // Add active class to new slide
        slides[currentSlide].classList.add('active');
    }

    // Change slide every 5 seconds
    setInterval(nextSlide, 5000);
});
</script>
        <!-- Barra de navegación -->
        <nav class="w-full flex items-center justify-between py-2 px-12 mt-8">
            <!-- Logo alineado a la izquierda -->
            <div class="flex items-center justify-start">
                <a href="{{ route('aroma.index') }}" class="logo no-underline text-white text-3xl font-fascinate">
                    AROMA TRIADA
                </a>
            </div>


            <!-- Menú de navegación alineado a la derecha -->
            <div class="flex justify-center flex-grow -ml-48">
                <ul class="flex space-x-24 text-white">
                    <li><a href="{{ route('aroma.index') }}" class="hover:underline">INICIO</a></li>
                    <li><a href="{{ route('aroma.nosotros') }}" class="hover:underline">NOSOTROS</a></li>
                    <li><a href="{{ route('aroma.preguntas') }}" class="hover:underline">PREGUNTAS</a></li>
                    <li><a href="{{ route('aroma.catalogo') }}" class="hover:underline">CATÁLOGO</a></li>
                    <li><a href="{{ route('tracking.mostrar') }}" class="hover:underline">TRACKING</a></li>
                </ul>
            </div>


            <!-- Enlaces de usuario (carrito y perfil) -->
            <div class="flex items-center space-x-6">
                <a href="{{ route('carrito.mostrar') }}" class="hover:underline">
                    <i class="fa-solid fa-cart-shopping text-white text-2xl"></i>
                </a>
                <a href="{{ route('aroma.perfil') }}" class="hover:underline">
                    <i class="fa-solid fa-user text-white text-2xl"></i>
                </a>
            </div>
        </nav>


        <!-- Sección de inicio de sesión / registrarse -->
        <div class="w-full py-2 px-12 text-sm text-white text-right">
            @if(auth()->check())
                @if(auth()->user()->esAdministrador())
                    <a href="{{ route('admin.index') }}" class="hover:underline text-white">Panel de Administración</a> |
                @endif
                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                    @csrf
                    <button type="submit" class="hover:underline text-white">Cerrar Sesión</button>
                </form>
            @else
                <a href="{{ route('aroma.inicioSesion') }}" class="hover:underline text-white">Iniciar Sesión |</a>
                <a href="{{ route('aroma.registro') }}" class="hover:underline text-white">Registrarse</a>
            @endif
        </div>
    </header>
</div>