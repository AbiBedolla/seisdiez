@extends('layouts.app')

@section('content')

	<div class="col-sm-8">
		<h4>
			Nuevo vehículo
			<td><a href="{{ route('productos.index') }}" class="btn btn-default pull-right">Listado</a></td>
		</h4>

@include('productos.fragment.error')

		{!! Form::open( ['route'=>'productos.store']) !!}

		@include('productos.fragment.form')

		{!! Form::close() !!}
	</div>

@endsection