<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    //
    protected $table = 'fc_orders';

    public function ordered_by()
    {
        return $this->belongsTo('App\User','order_form');
    }

    public function getOrder_bodyBrowseAttribute()
    {
        return 'Empty';
    }
}
