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
        Schema::create('tblnotification', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('userid');
            $table->string('approval_type');
            $table->string('status')->nullable();
            $table->timestamps();

            // Foreign key constraint
            $table->foreign('userid')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tblnotifications');
    }
};
