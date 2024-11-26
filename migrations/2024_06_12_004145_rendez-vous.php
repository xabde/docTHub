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
        Schema::create('rendez_vous', function (Blueprint $table) {
            $table->id('id_rendez_vous');
            $table->date('date');
            $table->time('heur');
            $table->text('ville');
            $table->bigInteger('id_medcin')->unsigned();
            $table->foreign('id_medcin')->references('id_medcin')->on('medcin');
            $table->string('nom');
            $table->string('description');
            $table->bigInteger('numero');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rendez_vous');
    }
};
