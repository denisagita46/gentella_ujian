<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMTypeBa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_type_ba', function (Blueprint $table) {
            $table->increments('id');
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
        Schema::dropIfExists('m_type_ba');
    }
}
