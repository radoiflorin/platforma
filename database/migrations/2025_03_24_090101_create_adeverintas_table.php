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
        Schema::create('adeverintas', function (Blueprint $table) {
            $table->id();
            $table->string('student_cnp'); // legatura cu elevul
            $table->date('data_emitere');
            $table->text('scop')->nullable();
            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('adeverintas');
    }
};
