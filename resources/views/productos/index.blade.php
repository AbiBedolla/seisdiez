@extends('layouts.app')

@section('content')
	<div class="col-sm-4">
		@include('productos.fragment.aside')
	</div>
	<div style="margin-left: 10%;" class="col-sm-8">
		<h4>Listado de vehículos
		<a href="{{route('productos.create')}}" class="btn btn-primary pull-right">Nuevo</a>
		</h4><br>
		@php $roles = Auth::user()->roles @endphp
		@foreach($roles as $rol)
		   
		@endforeach
			<div style="visibility: hidden;">
				<label name="role", id="role"> {{ $rol->name }}</label>
			</div>
			


		@include('productos.fragment.info')
		<div class="table-responsive">
			
		<table class="col-xs-5 table table-hover table-striped table-bordered table-sm" cellspacing="0"
  width="100%">
	
			<thead   style="background-color:black; color:white">
				<tr>
					<th width="30px">ID</th>
					<th>PLACAS</th>
					<th>MARCA</th>
					<th>COLOR</th>
					<th>MODELO</th>
					<th>POSICION</th>
					<th>USUARIO</th>
					<th colspan="3"> &nbsp;</th>
				</tr>
			</thead>
			<tbody>
				@foreach($productos as $producto)
				<tr>
				<td>{{ $producto->id }}</td>
				<td>{{ $producto->placas }}</td>
				<td>{{ $producto->marca }}</td>
				<td>{{ $producto->color }}</td>
				<td>{{ $producto->modelo }}</td>
				<td>{{ $producto->latitud }};{{$producto->longitud }}</td>
				<td>{{ $producto->usuario }}</td>
				<td><a href="{{ route('productos.show', $producto->id) }}" class="btn btn-link">Ver</a></td>
				<td><a href="{{ route('productos.edit', $producto->id) }}" class="btn btn-link">Editar</a></td>
				<td>
					<form action="{{ route('productos.destroy', $producto->id) }}" method="POST">
						{{  CSRF_FIELD() }}
						<input type="hidden" name="_method" value="DELETE">
						<button class="btn btn-link">Eliminar</button>
						
					</form>
				</td>
				</tr>
			@endforeach		
			</tbody>
		</table>
		</div>
		{!! $productos->render() !!}
	</div>

@endsection