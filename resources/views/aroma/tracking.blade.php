@extends('recursos.app')

@section('title', 'Estado de tu Envío')

@section('content')
<section class="container mx-auto py-12 px-6">
    <h1 class="text-3xl font-bold text-violeta mb-8 text-center">ESTADO DE TU ENVÍO</h1>

    <!-- Formulario de Búsqueda -->
    <div class="mb-8">
        <form action="{{ route('tracking.mostrar') }}" method="GET" class="flex items-center gap-4">
            <input 
                type="text" 
                name="id_tracking" 
                placeholder="Introduce tu código de envío" 
                class="flex-1 border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring focus:ring-violeta"
                value="{{ request('id_tracking') }}"
            >
            <button 
                type="submit" 
                class="bg-violeta text-white px-6 py-2 rounded-lg hover:bg-violeta-dark transition">
                Buscar
            </button>
        </form>
    </div>

    <!-- Resultados de Tracking -->
    @if($tracking->isEmpty())
        <p class="text-center text-gray-500">No se encontraron envíos.</p>
    @else
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        @foreach($tracking as $item)
        <div class="bg-crema1 shadow-lg rounded-lg p-6 hover:shadow-xl transition-shadow">
            <h3 class="text-lg font-bold text-violeta mb-2">Envío #{{ $item->id_tracking }}</h3>
            <p class="text-gray-800"><strong>Origen:</strong> {{ $item->origen }}</p>
            <p class="text-gray-800"><strong>Destino:</strong> {{ $item->destino }}</p>
            <p class="text-gray-800"><strong>Estado Actual:</strong> {{ $item->estado_actual }}</p>
            <p class="text-gray-800"><strong>Fecha de Despacho:</strong> {{ $item->fecha_despacho ?? 'Pendiente' }}</p>
            <p class="text-gray-800"><strong>Fecha de Entrega:</strong> {{ $item->fecha_entrega ? $item->fecha_entrega->format('Y-m-d') : 'Pendiente' }}</p>
            <p class="text-gray-800"><strong>Hora Programada:</strong> {{ $item->hora_programada ?? 'Pendiente' }}</p>
            <a href="{{ route('tracking.detalle', $item->id_tracking) }}"
               class="block mt-4 bg-violeta text-white text-center py-2 rounded hover:bg-violeta-dark transition">
               Ver Detalles
            </a>
        </div>
        @endforeach
    </div>
    @endif
</section>
@endsection
