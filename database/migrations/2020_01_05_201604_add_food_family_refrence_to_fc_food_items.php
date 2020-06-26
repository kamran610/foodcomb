<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFoodFamilyRefrenceToFcFoodItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fc_menu_items', function (Blueprint $table) {
            //
            $table->unsignedBigInteger('food_family_id');
            $table->foreign('food_family_id')->references('id')->on('fc_food_families')->onDelete('cascade');
            $table->index('food_family_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('fc_food_items', function (Blueprint $table) {
            //
        });
    }
}
