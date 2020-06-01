<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransHBa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trans_h_ba', function (Blueprint $table) {
            $table->increments('id');
			$table->date('trans_date');
			$table->integer('total_asset');
		    $table->string('id_region');
			$table->string('id_depo');
			$table->string('notes');
			$table->integer('id_status_ba');
			$table->integer('sap_code');
			$table->date('created_by');
			$table->date('updated_by');
			$table->integer('approved_by');
			$table->date('approved_date');
			$table->integer('id_jenis_ba');
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
        Schema::dropIfExists('trans_h_ba');
    }
}
