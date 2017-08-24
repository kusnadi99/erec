<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('devisi_id')->unsigned();
            $table->integer('unit_id')->unsigned();
            $table->integer('department_id')->unsigned();
            $table->integer('section_id')->unsigned();
            $table->timestamps();

            //foreignkey
            $table->foreign('devisi_id')->references('id')->on('devisis');
            $table->foreign('unit_id')->references('id')->on('units');
            $table->foreign('department_id')->references('id')->on('departments');
            $table->foreign('section_id')->references('id')->on('sections');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stos');
    }
}
