<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('role_id')->unsigned();
            $table->integer('personnel_id')->unsigned();
            $table->string('username')->unique();
            $table->string('nip')->unique();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();

            //fk
            $table->foreign('role_id')->references('id')->on('roles');
            $table->foreign('personnel_id')->references('id')->on('personnels');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
