<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransdBa extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transd_ba', function (Blueprint $table) {
            $table->increments('id');
			$table->integer('id_trans_h_ba');
			$table->string('aset');
			$table->string('asset_description');
			$table->string('cost_center');
			$table->string('capitalized_on');
			$table->string('acquis_val');
			$table->string('accum_dep');
			$table->string('book_val');
			$table->string('vendor_pembeli');
			$table->string('harga_penawaran');
			$table->string('keterangan');
			$table->string('val_harga_jual');
			$table->string('bank_incoming');
		    $table->integer('harga_jual');
			$table->string('lampiran');
			$table->string('ceklis_kelengkapan');
			$table->integer('total_cicilan');
			$table->string('cost_center_tujuan');
			$table->string('no_asset_baru');
			$table->string('deskripsi_asset_baru');
			$table->string('lokasi_baru');
			$table->string('serial_number_baru');
			$table->string('merk_baru');
			$table->string('user_baru');
			$table->integer('id_type_table_ba');
			$table->integer('flag_active');
			$table->string('notes');
			$table->date('created_by');
			$table->date('updated_by');
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
        Schema::dropIfExists('transd_ba');
    }
}
