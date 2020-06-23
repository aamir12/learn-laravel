<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    //
    public function role(){
        return $this->belongsTo('\App\Role');
    }

    public function profile(){
        //If value is not match return default
        // return $this->hasOne('\App\Profile')->withDefault([
        //     'fullname' => 'Guest'
        // ]);

        //If value is not match return null
        return $this->hasOne('\App\Profile')->withDefault();
       
    }
}
