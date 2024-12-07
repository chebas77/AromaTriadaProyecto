@extends('recursos.base_admin')
@section('title', 'Panel de Administración')
@section('content')

<main class="flex-1 p-2 bg-gray-50">
    <!-- Metrics Section -->
    <section class="px-2 py-3 mb-3">
        <div class="container mx-auto px-2 py-3">
            <h1 class="text-xs font-medium text-gray-800 mb-2">Panel de Administración</h1>

            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-2">
                <!-- Usuarios conectados -->
                <div class="bg-blue-500 text-white p-2 rounded-lg shadow-sm flex items-center space-x-2 hover:shadow-md transition-shadow duration-300">
                    <div class="text-xl"><i class="fa-solid fa-users"></i></div>
                    <div>
                        <h2 class="text-xs font-semibold">Usuarios Conectados</h2>
                        <p class="text-xs font-medium">{{ $connectedUsers }}</p>
                    </div>
                </div>

                <!-- Ventas realizadas -->
                <div class="bg-green-500 text-white p-2 rounded-lg shadow-sm flex items-center space-x-2 hover:shadow-md transition-shadow duration-300">
                    <div class="text-xl"><i class="fa-solid fa-shop"></i></div>
                    <div>
                        <h2 class="text-xs font-semibold">Ventas Totales</h2>
                        <p class="text-xs font-medium">{{ $totalSales }}</p>
                    </div>
                </div>

                <!-- Nuevos usuarios -->
                <div class="bg-yellow-500 text-white p-2 rounded-lg shadow-sm flex items-center space-x-2 hover:shadow-md transition-shadow duration-300">
                    <div class="text-xl"><i class="fa-solid fa-user"></i></div>
                    <div>
                        
                        <h2 class="text-xs font-semibold">Nuevos Usuarios Registrados</h2>
                        <p class="text-xs font-medium">{{ $newUsers }}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Chart Section (Gráfico de Ventas Mensuales) -->
    <section class="px-2 py-3 mb-3">
        <div class="bg-white rounded-lg shadow-sm p-2">
            <h2 class="text-xs font-semibold text-gray-800 mb-2">Ventas Mensuales</h2>
            <canvas id="myChart" class="w-full h-16"></canvas> <!-- Gráfico de ventas más pequeño -->
        </div>
    </section>

    <!-- Gráfico de Pizza (Productos más vendidos) -->
    <section class="px-2 py-3">
    <!-- Contenedor Flex para dos gráficos -->
    <div class="flex space-x-4">
        <!-- Primer Gráfico de Pizza (a la izquierda) -->
        <div class="bg-white rounded-lg shadow-sm p-4 w-1/2">
            <h2 class="text-xs font-semibold text-gray-800 mb-2">Productos Más Vendidos</h2>
            <canvas id="productPieChart" class="w-full h-64"></canvas> <!-- Ajuste de tamaño específico -->
        </div>
        
        <!-- Segundo Gráfico de Pizza (a la derecha) -->
        <div class="bg-white rounded-lg shadow-sm p-4 w-1/2">
            <h2 class="text-xs font-semibold text-gray-800 mb-2">Gráfico de Ventas por Categoría</h2>
            <canvas id="deliveryMethodsChart" class="w-full h-64"></canvas>
        </div>
    </div>
</section>




</main>

<!-- Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    // Datos para el gráfico de ventas mensuales
    const ctx1 = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx1, {
        type: 'bar',  // Gráfico de barras
        data: {
            labels: @json($salesMonths), // Meses obtenidos del controlador
            datasets: [{
                label: 'Ventas',
                data: @json($salesTotals), // Cantidad de ventas por mes
                backgroundColor: 'rgba(54, 162, 235, 0.6)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'top'
                }
            },
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: 'Ventas'
                    },
                    ticks: {
                        font: {
                            size: 10
                        }
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Mes'
                    },
                    ticks: {
                        font: {
                            size: 10
                        }
                    }
                }
            }
        }
    });

    // Datos para el gráfico de pizza de productos más vendidos
    const ctx2 = document.getElementById('productPieChart').getContext('2d');
    const productPieChart = new Chart(ctx2, {
        type: 'pie',  // Gráfico de pizza
        data: {
            labels: @json($soldProducts->pluck('product_name')), // Nombres de los productos
            datasets: [{
                data: @json($soldProducts->pluck('total_sold')), // Cantidad vendida de cada producto
                backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF'],
                hoverBackgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF']
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top'
                },
                tooltip: {
                    callbacks: {
                        label: function(tooltipItem) {
                            return tooltipItem.label + ': ' + tooltipItem.raw + ' unidades';
                        }
                    }
                }
            }
        }
    });
</script>
<script>
    var ctx = document.getElementById('deliveryMethodsChart').getContext('2d');
    var deliveryMethodsChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: @json($methods), // Métodos de entrega: "Delivery" y "Recojo en tienda"
            datasets: [{
                label: 'Ventas por Método de Entrega',
                data: @json($salesByMethod), // Ventas por método de entrega
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
@endsection
