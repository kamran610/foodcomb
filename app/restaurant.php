<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class restaurant extends Model
{
    //
    protected $table = 'fc_restaurants';

    public function owner(){
        return $this->belongsTo('App\User');
    }
        
}
