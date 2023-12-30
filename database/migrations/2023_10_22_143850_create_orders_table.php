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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email');
            $table->integer('phone');
            $table->string('location');
            $table->integer('product_id');
            $table->integer('user_id');
            $table->string('order_num');
            $table->string('car_model');
            $table->string('car_brand');
            $table->string('date');
            $table->string('service_id');
            $table->string('car_year_num');
            $table->string('spare_parts_name');
            $table->string('metro_name');
            $table->string('letter_name');
            $table->string('registration');
            $table->text('Others')->nullable();
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
        Schema::dropIfExists('orders');
    }
};
