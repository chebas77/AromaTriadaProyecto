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
        DB::table('tracking')->whereNotNull('fecha_despacho')->update([
            'fecha_despacho' => DB::raw("CONCAT(fecha_despacho, ' 00:00:00')"),
        ]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        DB::table('tracking')->update([
            'fecha_despacho' => DB::raw("DATE(fecha_despacho)"),
        ]);
    }
};
