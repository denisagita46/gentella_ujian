<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SdSoMain extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sd_so_main', function (Blueprint $table) {
            $table->bigIncrements('id');
			$table->integer('parent_id');
			$table->string('name');
			$table->string('type');
			$table->string('address');
			$table->string('contact');
			$table->string('coordinate');
			$table->integer('status_id');
			$table->integer('level');
			$table->integer('latitude');
			$table->integer('longitude');
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
        Schema::dropIfExists('sd_so_main');
    }
}
