<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToFcRestaurant extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fc_restaurants', function (Blueprint $table) {
            //
            // $table->unsignedBigInteger('area_id');
            // $table->foreign('area_id')->references('id')->on('fc_areas')->onDelete('cascade');
            // $table->index('area_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('fc_restaurant', function (Blueprint $table) {
            //
        });
    }
}
