<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('tracking', function (Blueprint $table) {
            // Permitir temporalmente valores nulos
            $table->datetime('fecha_despacho')->nullable()->change();
        });
    
        // Asegurarte de que los valores existentes sean compatibles con datetime
        DB::table('tracking')->whereNotNull('fecha_despacho')->update([
            'fecha_despacho' => DB::raw("CONCAT(fecha_despacho, ' 00:00:00')")
        ]);
    
        // Cambiar la columna a NOT NULL después de limpiar los datos
        Schema::table('tracking', function (Blueprint $table) {
            $table->datetime('fecha_despacho')->nullable(false)->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tracking', function (Blueprint $table) {
            $table->date('fecha_despacho')->change(); // Revertir a date
        });
    }
};
