<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Rulează migrarea.
     */
    public function up(): void
    {
        Schema::create('elevs', function (Blueprint $table) {
            $table->id();
            $table->string('nume');
            $table->string('prenume');
            $table->string('cnp')->unique();
            $table->string('clasa')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Rulează rollback-ul migrării.
     */
    public function down(): void
    {
        Schema::dropIfExists('elevs');
    }
};
