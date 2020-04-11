<?php

namespace California;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;
use Caffeinated\Shinobi\Models\Role;
use California\User;
use Illuminate\Support\Str;

class Productos extends Model
{
    protected $fillable = [
    	'placas','marca', 'color', 'modelo', 'latitud','longitud','usuario',
    ];

public function scopeTipo($query, $roles){

	
	$user= auth()->user()->id;
	$username= auth()->user()->name;
  	


  if ($username != "admin") {
		$query ->where('usuario', "LIKE", "%$user%")
		->get();
	}
 	
    
}
}
	
	
	
?>