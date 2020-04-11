@extends('layouts.app')

@section('content')

	<div class="col-sm-8">
		<h4>
			
			Editar vehículo
			<td><a href="{{ route('productos.index') }}" class="btn btn-default pull-right">Listado</a></td>
		</h4>
@include('productos.fragment.error')
		
		{!! Form::model($productos, ['route'=>['productos.update',$productos->id], 'method'=>'PUT']) !!}

		@include('productos.fragment.form')

		{!! Form::close() !!}
	</div>

@endsection