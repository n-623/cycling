<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Highlight extends Model
{
    protected $guarded = array('id');
    
    
    public function course()
{
    return $this->belongsTo('App\Course');
}    
    
}
