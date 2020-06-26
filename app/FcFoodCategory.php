<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class FcFoodCategory extends Model
{
    protected $table = 'fc_food_categories';

    public function food_families() {
      return $this->hasMany('App\food_family','category_id');
    }
}
