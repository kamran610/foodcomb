<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCategoryRefrenceToFcItems extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('fc_menu_items', function (Blueprint $table) {
          $table->unsignedBigInteger('category_id');
          $table->foreign('category_id')->references('id')->on('fc_food_categories')->onDelete('cascade');
          $table->index('category_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('fc_items', function (Blueprint $table) {
            //
        });
    }
}
