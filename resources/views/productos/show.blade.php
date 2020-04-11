@extends('layout')

@section('content')
<style type="text/css">
	#map{
		width: 500px;
		height: 500px;
	}
	.map-responsive{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
}
.map-responsive iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
}
</style>
	<div class="col-sm-8">

		<h4>
			
			{{ $productos->id}}
			<td><a href="{{ route('productos.edit', $productos->id) }}" class="btn btn-default pull-right">Editar</a></td>
			<td><a href="{{ route('productos.index') }}" class="btn btn-default pull-right">Listado</a></td>
		</h4>
		<p>
			<h4>PLACAS: </h4>
			{{ $productos->placas }}<br>
			<h4>MARCA: </h4>
			{{ $productos->marca }}<br>
			<h4>COLOR: </h4>
			{{ $productos->color }}<br>
			<h4>MODELO: </h4>
			{{ $productos->modelo }} <br>
			<h4>POSICIÓN: </h4>
		
	
	
	<br>
			<label id="latitud">{{ $productos->latitud }}</label>
			<label id="longitud">{{ $productos->longitud }}</label>


  
		</p>
			
		<h4>USUARIO: </h4>

		{{ $productos->usuario }}<br>
		<div id="map" class="map-responsive" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></div>
		{!! $productos->body !!}
		

<script type="text/javascript">
	function iniciarMap(){
		var latitud=document.getElementById('latitud').innerHTML;
		var longitud =document.getElementById('longitud').innerHTML;
				console.log(latitud);
				console.log(longitud);

	var lat1 =  parseFloat(latitud); 
	var long1 = parseFloat(longitud);
	console.log(lat1);
	console.log(long1);

    var coord = {lat:lat1,lng:long1};
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 10,
      center: coord
    });
    var marker = new google.maps.Marker({
      position: coord,
      map: map
    });
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDp3nVL5MABAMbwGVhfrGwV-FLCbS7Sqxk&callback=iniciarMap"></script>

	</div>

@endsection