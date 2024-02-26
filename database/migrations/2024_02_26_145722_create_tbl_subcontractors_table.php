<?php

// In the create_tbl_subcontractors_table migration file

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblSubcontractorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tblSubcontractor', function (Blueprint $table) {
            $table->id();
            $table->integer('employeeid')->nullable();
            $table->string('employee_branch')->nullable();
            $table->string('employee_department')->nullable();
            $table->integer('subcontractor_id')->nullable();
            $table->string('subcontractor_code')->nullable();
            $table->string('subcontractor_desc')->nullable();
            $table->integer('vendor_id')->nullable();
            $table->decimal('product_prize', 10, 2)->nullable();
            $table->string('transac_status')->nullable();
            $table->text('employee_review')->nullable();
            $table->boolean('isNotice')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tblSubcontractor');
    }
}
