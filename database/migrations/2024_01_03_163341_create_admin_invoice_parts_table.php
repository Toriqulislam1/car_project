<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admin_invoice_parts', function (Blueprint $table) {
            $table->id();
            $table->integer('invoice_id');
            $table->string('part');
            $table->string('qty');
            $table->string('rate');
            $table->string('amount');


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
        Schema::dropIfExists('admin_invoice_parts');
    }
};
