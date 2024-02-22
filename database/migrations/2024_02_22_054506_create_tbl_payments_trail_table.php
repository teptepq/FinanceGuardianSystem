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
        Schema::create('tbl_payments_trail', function (Blueprint $table) {
            $table->id();
            $table->integer('appkey')->unique();
            $table->integer('user_id');
            $table->string('username');
            $table->string('ORNo')->unique();
            $table->date('DatePaid');
            $table->string('TransStat');
            $table->longtext('BankName');
            $table->longtext('BankBranch');
            $table->double('Debit');
            $table->double('Credit');
            $table->double('Balance');
            $table->longtext('PaymentDesc')->nullable();
            $table->text('remarks');    
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_payments_trail');
    }
};
