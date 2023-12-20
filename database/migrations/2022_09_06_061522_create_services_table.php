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
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id')->nullable();
            $table->integer('subcategory_id')->nullable();
            $table->integer('childcategory_id')->nullable();
            $table->string('content_slide_title');
            $table->string('breadcrumb');
            $table->string('content_title');
            $table->string('content_descrip');
            $table->text('long_descrip');
            $table->string('thamble');
            $table->string('breadcrumb_title_bn');
            $table->string('service_title_bn');
            $table->string('short_descrip_bn');
            $table->text('long_descrip_bn');

            $table->integer('status')->default(0);
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
        Schema::dropIfExists('services');
    }
};
