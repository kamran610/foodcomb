<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FcOrders extends Model
{
    //
    // protected $with = ['restaurant'];

    public function restaurant(){
        return $this->belongsTo('App\restaurant', 'id','restaurant_id');
    }

    public function getOrder_bodyBrowseAttribute()
    {
        return 'Empty';
    }
}
