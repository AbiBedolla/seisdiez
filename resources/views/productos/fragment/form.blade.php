<div class="form-group">
	{!! Form::label('placas','Placas del vehículo') !!}
	{!! Form::text('placas',null, ['class'=> 'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('marca','Marca') !!}
	{!! Form::text('marca',null, ['class'=> 'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('color','Color') !!}
	{!! Form::text('color',null, ['class'=> 'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('modelo','Modelo') !!}
	{!! Form::text('modelo',null, ['class'=> 'form-control']) !!}
</div>

<div class="form-group">
	{!! Form::label('latitud','latitud') !!}
	{!! Form::text('latitud',null, ['class'=> 'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('longitud','longitud') !!}
	{!! Form::text('longitud',null, ['class'=> 'form-control']) !!}
</div>
<div class="form-group">
	{!! Form::label('usuario','Usuario') !!}
{!! Form::text('usuario', Auth::user()->id,['class'=>'form-control', 'readonly'] ) !!}

</div>




<div>

	{!! Form::submit('ENVIAR', ['class'=>'btn btn-primary']) !!}
</div>