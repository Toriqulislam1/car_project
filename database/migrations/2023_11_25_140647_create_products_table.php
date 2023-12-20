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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('price');
            $table->string('unit');
            $table->string('discount');
            $table->string('image');
            $table->string('details');
            $table->string('stock');
            $table->integer('status');

            $table->string('title_bn');
            $table->string('price_bn');
            $table->string('stock_bn');
            $table->string('discount_bn');
            $table->integer('unit_bn');
            $table->text('product_long_descrp_bn');


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
        Schema::dropIfExists('products');
    }
};
