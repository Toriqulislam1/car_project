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
        Schema::create('product_orders', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->integer('user_id');
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('location');
            $table->string('order_number');
            $table->string('extra_product_id');

            $table->string('car_brand');
            $table->string('car_model');
            $table->string('date');
            $table->string('car_year_num');
            $table->string('metro_name');
            $table->string('letter_name');
            $table->string('registration');
            $table->string('sparePart');
            $table->string('partPartial');
            $table->string('Others')->nullable();



            $table->string('status')->default('panding');
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
        Schema::dropIfExists('product_orders');
    }
};
