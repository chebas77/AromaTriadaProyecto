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
        Schema::table('servicios', function (Blueprint $table) {
            // Eliminar la clave foránea
            $table->dropForeign(['id_categoria']);
            // Eliminar las columnas
            $table->dropColumn(['tipo_servicio', 'id_categoria']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('servicios', function (Blueprint $table) {
            // Restaurar las columnas
            $table->string('tipo_servicio')->nullable();
            $table->unsignedBigInteger('id_categoria')->nullable();

            // Restaurar la clave foránea
            $table->foreign('id_categoria')->references('id')->on('categorias')->onDelete('cascade');
        });
    }
};
