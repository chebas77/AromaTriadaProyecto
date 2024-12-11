@extends('recursos.app')
@section('title', 'Preguntas Frecuentes')

@section('content')
<!-- Enhanced FAQ Section -->
<section class="bg-crema1 min-h-screen py-16 px-4 mt-12 rounded-2xl">
  <div class="container mx-auto max-w-6xl">
    <div class="text-center mb-16">
      <h2 class="text-5xl font-extrabold text-violeta mb-6 tracking-tight">
        Preguntas Frecuentes
      </h2>
      <p class="text-xl text-gray-600 max-w-3xl mx-auto font-semibold">
        Encuentra respuestas rápidas a las preguntas más comunes sobre nuestros productos, servicios de catering y procesos de compra. Si necesitas más información, estamos a tu disposición.
      </p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      <!-- Category 1: General -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-blue-500 text-white">
          <h3 class="text-2xl font-bold">General</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-blue-600 transition-colors py-2">
              ¿Qué tipos de productos ofrecen?
            </summary>
            <p class="mt-2 text-gray-600">
              Ofrecemos una variedad de postres y tortas personalizadas, así como servicios de catering para eventos corporativos y personales.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-blue-600 transition-colors py-2">
              ¿Cómo puedo hacer un pedido en línea?
            </summary>
            <p class="mt-2 text-gray-600">
              Simplemente navega por nuestro catálogo, agrega los productos o servicios que desees al carrito y sigue los pasos de compra. Puedes personalizar algunos productos antes de agregarlos.
            </p>
          </details>
        </div>
      </div>

      <!-- Category 2: Productos y Personalización -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-green-500 text-white">
          <h3 class="text-2xl font-bold">Productos y Personalización</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-green-600 transition-colors py-2">
              ¿Puedo personalizar una torta o postre?
            </summary>
            <p class="mt-2 text-gray-600">
              Sí, ofrecemos opciones de personalización para nuestras tortas y postres, incluyendo dedicatorias y tamaños. Selecciona "personalizar" en el producto para ver las opciones disponibles.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-green-600 transition-colors py-2">
              ¿Cuánto tiempo de anticipación necesito para hacer un pedido personalizado?
            </summary>
            <p class="mt-2 text-gray-600">
              Para asegurar la mejor calidad, recomendamos hacer pedidos personalizados con al menos 3 días de anticipación. En casos urgentes, contáctanos y veremos cómo ayudarte.
            </p>
          </details>
        </div>
      </div>

      <!-- Category 3: Servicios de Catering -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-purple-500 text-white">
          <h3 class="text-2xl font-bold">Servicios de Catering</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-purple-600 transition-colors py-2">
              ¿Qué incluye el servicio de catering?
            </summary>
            <p class="mt-2 text-gray-600">
              Nuestro servicio de catering incluye una selección de comidas, postres, bebidas, y servicios de montaje. Consulta nuestra sección de catering para ver los paquetes y precios detallados.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-purple-600 transition-colors py-2">
              ¿Puedo solicitar un catering para eventos corporativos?
            </summary>
            <p class="mt-2 text-gray-600">
              Sí, nuestros servicios están diseñados tanto para eventos corporativos como para celebraciones personales. Ofrecemos opciones adaptadas a las necesidades de cada tipo de evento.
            </p>
          </details>
        </div>
      </div>

      <!-- Category 4: Pagos y Facturación -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-indigo-500 text-white">
          <h3 class="text-2xl font-bold">Pagos y Facturación</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-indigo-600 transition-colors py-2">
              ¿Cuáles son los métodos de pago aceptados?
            </summary>
            <p class="mt-2 text-gray-600">
              Aceptamos pagos con tarjetas de crédito, débito, y transferencias bancarias. También puedes realizar pagos en efectivo en nuestro local.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-indigo-600 transition-colors py-2">
              ¿Puedo solicitar una factura por mi compra?
            </summary>
            <p class="mt-2 text-gray-600">
              Sí, durante el proceso de pago, tendrás la opción de ingresar tus datos para recibir una factura electrónica en tu correo.
            </p>
          </details>
        </div>
      </div>

      <!-- Category 5: Envíos y Entregas -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-orange-500 text-white">
          <h3 class="text-2xl font-bold">Envíos y Entregas</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-orange-600 transition-colors py-2">
              ¿Hacen envíos a toda la ciudad?
            </summary>
            <p class="mt-2 text-gray-600">
              Sí, realizamos envíos a cualquier punto dentro de la ciudad. Los costos de envío pueden variar según la ubicación.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-orange-600 transition-colors py-2">
              ¿Qué sucede si no estoy en casa en el momento de la entrega?
            </summary>
            <p class="mt-2 text-gray-600">
              En caso de no encontrarte, te contactaremos para coordinar una segunda entrega o recoger el pedido en nuestra tienda.
            </p>
          </details>
        </div>
      </div>

      <!-- Category 6: Atención al Cliente -->
      <div class="bg-white shadow-xl rounded-xl overflow-hidden hover:shadow-2xl transition-all duration-300">
        <div class="p-6 bg-red-500 text-white">
          <h3 class="text-2xl font-bold">Atención al Cliente</h3>
        </div>
        <div class="p-6 space-y-4">
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-red-600 transition-colors py-2">
              ¿Cómo puedo contactarlos si tengo algún problema con mi pedido?
            </summary>
            <p class="mt-2 text-gray-600">
              Puedes contactarnos a través de nuestra sección de contacto en el sitio web, enviarnos un correo electrónico o llamarnos directamente. Estamos aquí para ayudarte.
            </p>
          </details>
          <details class="border-b pb-4 last:border-b-0">
            <summary class="cursor-pointer font-semibold text-gray-800 hover:text-red-600 transition-colors py-2">
              ¿Tienen políticas de devolución?
            </summary>
            <p class="mt-2 text-gray-600">
              Ofrecemos reembolsos o cambios en caso de problemas con nuestros productos o servicios, siempre que se presenten pruebas dentro de las primeras 24 horas tras la entrega.
            </p>
          </details>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection