<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMStatusBa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sd_employee', function (Blueprint $table) {
            $table->bigIncrements('id');
			$table->integer('name');
			$table->string('notes');
			$table->integer('created_by');
			$table->integer('updated_by');
			$table->integer('flag_active');
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
        Schema::dropIfExists('m_status_ba');
    }
}
