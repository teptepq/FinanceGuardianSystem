<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePersonalDataTable extends Migration
{
    public function up()
    {
        Schema::create('_personaldata', function (Blueprint $table) {
            $table->id();
            $table->string('employeeid');
            $table->string('plantillaid');
            $table->string('employeecode');
            $table->string('lname');
            $table->string('fname');
            $table->string('mname');
            $table->string('nname')->default('')->nullable();
            $table->string('rank')->default('')->nullable();
            $table->date('dateposition')->nullable();
            $table->string('emp_tin')->nullable();
            $table->string('emp_pagibig')->nullable();
            $table->string('emp_sss')->nullable();
            $table->string('emp_philhealth')->nullable();
            $table->string('emp_hmo')->nullable();
            $table->string('emp_peraa')->nullable();
            $table->string('prc')->nullable();
            $table->date('prc_expiration')->nullable();
            $table->string('passport')->nullable();
            $table->string('emp_bank')->nullable();
            $table->string('teachingtype')->nullable();
            $table->string('positionid')->nullable();
            $table->string('employmentstat')->nullable();
            $table->string('office')->nullable();
            $table->string('deptid')->nullable();
            $table->string('gender')->default('')->nullable();
            $table->string('bplace')->default('')->nullable();
            $table->date('bdate')->nullable();
            $table->string('resigned_reason')->nullable();
            $table->string('nationalityid')->nullable();
            $table->string('religionid')->nullable();
            $table->string('civil_status')->nullable();
            $table->string('citizenid')->nullable();
            $table->string('personal_email')->nullable();
            $table->string('mobile')->nullable();
            $table->string('landline')->nullable();
            $table->string('email')->nullable();
            $table->boolean('isactive')->nullable();
            $table->string('teaching')->default('')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('_personaldata');
    }
}
