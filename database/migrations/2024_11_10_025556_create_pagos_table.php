<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pagos', function (Blueprint $table) {
            $table->id('id_pago'); // Clave primaria para pagos
            $table->unsignedBigInteger('id_pedido'); // Define id_pedido como unsignedBigInteger para que coincida con pedidos

            // Configura la clave foránea a pedidos con onDelete
            $table->foreign('id_pedido')->references('id_pedido')->on('pedidos')->onDelete('cascade');

            $table->date('fecha_pago');
            $table->decimal('monto', 10, 2);
            $table->enum('estado', ['Pendiente', 'Completado', 'Fallido']);
            $table->string('metodo', 50)->nullable();
            $table->timestamps();
        });
        
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pagos');
    }
};