<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblUserdescTable extends Migration
{
    public function up()
    {
        Schema::create('tblUserdesc', function (Blueprint $table) {
            $table->id();
            $table->integer('cid');
            $table->string('descid');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('tblUserdesc');
    }
};
