@extends('recursos.app')

@section('title', 'Estado de tu Envío')

@section('content')
<section class="bg-crema1 min-h-screen py-16 px-4 mt-12 rounded-2xl">
    <div class="container mx-auto max-w-6xl">
        <div class="text-center mb-12">
            <h1 class="text-4xl font-extrabold text-violeta mb-4 tracking-tight">
                ESTADO DE TU ENVÍO
            </h1>
            <p class="text-gray-600 max-w-2xl mx-auto font-semibold text-lg">
                Rastrea fácilmente el estado de tus envíos con nuestro sistema de seguimiento en línea.
            </p>
        </div>

        <!-- Formulario de Búsqueda -->
        <div class="mb-12">
            <form action="{{ route('tracking.mostrar') }}" method="GET" class="max-w-xl mx-auto">
                <div class="flex shadow-lg rounded-xl overflow-hidden">
                    <input 
                        type="text" 
                        name="id_tracking" 
                        placeholder="Introduce tu código de envío" 
                        class="flex-1 px-6 py-4 text-gray-700 focus:outline-none focus:ring-2 focus:ring-violeta placeholder-gray-400"
                        value="{{ request('id_tracking') }}"
                    >
                    <button 
                        type="submit" 
                        class="bg-violeta text-white px-8 py-4 hover:bg-violeta-dark transition-colors duration-300 flex items-center justify-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                        </svg>
                    </button>
                </div>
            </form>
        </div>

        <!-- Resultados de Tracking -->
        @if($tracking->isEmpty())
            <div class="text-center bg-white shadow-xl rounded-xl p-12 max-w-md mx-auto">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-24 w-24 mx-auto text-gray-300 mb-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 005.656 0m-5.656 0a4 4 0 115.656 0m-5.656 0L3 7.757V19a2 2 0 002 2h14a2 2 0 002-2V7.757l-5.172 5.415a4 4 0 01-5.656 0z" />
                </svg>
                <p class="text-xl text-gray-600 mb-4">No se encontraron envíos.</p>
                <p class="text-gray-500">Verifica tu código de seguimiento e intenta nuevamente.</p>
            </div>
        @else
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            @foreach($tracking as $item)
            <div class="bg-white shadow-xl rounded-xl overflow-hidden transform transition-all duration-300 hover:-translate-y-2 hover:shadow-2xl">
                <div class="bg-violeta text-white p-4">
                    <h3 class="text-xl font-bold">Envío #{{ $item->id_tracking }}</h3>
                </div>
                <div class="p-6 space-y-3">
                    <div class="flex items-center space-x-3 text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-violeta" viewBox="0 0 20 20" fill="currentColor">
                            <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z" />
                        </svg>
                        <p><strong>Origen:</strong> {{ $item->origen }}</p>
                    </div>
                    <div class="flex items-center space-x-3 text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-violeta" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd" />
                        </svg>
                        <p><strong>Destino:</strong> {{ $item->destino }}</p>
                    </div>
                    <div class="flex items-center space-x-3 text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-violeta" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd" />
                        </svg>
                        <p><strong>Estado:</strong> {{ $item->estado_actual }}</p>
                    </div>
                    <div class="flex items-center space-x-3 text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-violeta" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd" />
                        </svg>
                        <p><strong>Despacho:</strong> {{ $item->fecha_despacho ?? 'Pendiente' }}</p>
                    </div>
                    <div class="flex items-center space-x-3 text-gray-700">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-violeta" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z" clip-rule="evenodd" />
                        </svg>
                        <p><strong>Entrega:</strong> {{ $item->fecha_entrega ? $item->fecha_entrega->format('Y-m-d') : 'Pendiente' }}</p>
                    </div>
                    <a href="{{ route('tracking.detalle', $item->id_tracking) }}"
                       class="block mt-4 bg-violeta text-white text-center py-3 rounded-lg hover:bg-violeta-dark transition-colors duration-300 flex items-center justify-center space-x-2">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                            <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z" />
                            <path fill-rule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2H7zm3 0a1 1 0 100 2h3a1 1 0 100-2h-3z" clip-rule="evenodd" />
                        </svg>
                        <span>Ver Detalles</span>
                    </a>
                </div>
            </div>
            @endforeach
        </div>
        @endif
    </div>
</section>
@endsection