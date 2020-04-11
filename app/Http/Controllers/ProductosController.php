<?php

namespace California\Http\Controllers;

use Illuminate\Http\Request;
use California\Productos;
use California\Http\Requests\ProductosRequest;
use Caffeinated\Shinobi\Models\Role;
use Caffeinated\Shinobi\Models\Permission;
use California\User;


class ProductosController extends Controller
{
    public function index(Request $request){
         
 
    $productos = Productos::Tipo($request->get('role','user'))->orderBy('id','ASC')->paginate();

    return view('productos.index', compact('productos'));

    }

    public function show($id){
    	
         $productos =Productos::find($id);
    	return view('productos.show',compact('productos'));
    }

    public function create(){
      
    	return view('productos.create');
    }

    public function store(ProductosRequest $request){
    	$productos = new Productos;

     	$productos->placas 			= $request->placas;
     	$productos->marca           = $request->marca;
     	$productos->color 			= $request->color;
     	$productos->modelo 			= $request->modelo;
     	$productos->latitud 	    = $request->latitud;
        $productos->longitud        = $request->longitud;
        $productos->usuario         = $request->usuario;

     	$productos->save();

    	return redirect()->route('productos.index')
    					->with('info', 'El vehículo ha sido guardado');
    }

     public function update(ProductosRequest $request, $id){

     	$productos = Productos::find($id);

        $productos->placas          = $request->placas;
        $productos->marca           = $request->marca;
        $productos->color           = $request->color;
        $productos->modelo          = $request->modelo;
        $productos->latitud         = $request->latitud;
        $productos->longitud        = $request->longitud;
        $productos->usuario         = $request->usuario;

        $productos->save();

    	return redirect()->route('productos.index')
    					->with('info', 'El vehículo ha sido actualizado');
    }	

    public function edit($id){
    	$productos =Productos::find($id);
    	return view('productos.edit',compact('productos'));
    }

    public function destroy($id){
    	$productos = Productos::find($id);
    	$productos->delete();
    	return back()->with('info', 'El vehículo fue eliminado');
    }


}
