<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSdEmployee extends Migration
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
			$table->integer('status_id');
			$table->integer('sd_so_main_id');
			$table->integer('departement_id');
			$table->integer('user_id');
			$table->integer('m_company_id');
			$table->integer('gs_harcode_id');
			$table->string('sd_supplier_id');
			$table->string('employee_id');
			$table->string('name');
			$table->string('token');
			$table->date('transaction_date');
			$table->string('apk_version');
			$table->date('created_by');
			$table->date('updated_by');
			$table->date('is_expired');
			$table->integer('passkey');
			$table->integer('firebase_token');
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
         Schema::dropIfExists('sd_employee');
    }
}
