<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $guarded = array('id');
    
    
    public function highlights()
{
    return $this->hasMany('App\Highlight');
}

}
