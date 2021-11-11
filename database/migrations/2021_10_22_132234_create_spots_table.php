<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSpotsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('spots', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->text('body');
            $table->string('address')->nullable();
            $table->string('tel')->nullable();
            $table->string('hour')->nullable();
            $table->string('holiday')->nullable();
            $table->string('url')->nullable();
            $table->string('map');
            $table->string('genre');
            $table->string('image_path');
            $table->string('image_path_s');
            
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
        Schema::dropIfExists('spots');
    }
}
