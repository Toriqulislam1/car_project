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
        Schema::create('admininvoices', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('address');
            $table->string('email');
            $table->string('phone');
            $table->string('caryear');
            $table->string('engine');
            $table->string('model');
            $table->string('brand');
            $table->string('registration');
            $table->string('km');
            $table->string('chassis');
            $table->string('serviceCost');
            $table->string('partCost');

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
        Schema::dropIfExists('admininvoices');
    }
};
