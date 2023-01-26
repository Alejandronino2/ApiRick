
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <center><h1>Personajes Rick and Morty</h1></center>
            <div class="card">
            </div>
            <br>
        </div>
        <div>
        <a class="btn btn-success" href="http://127.0.0.1:8000/store-data">Guardar en la base de datos</a>
        <a class="btn btn-warning" href="#">Editar</a></div>
        
        <div><br></div>
        @foreach($usuarioArray['results'] as $usuario)
         <div class="col-md-6">
            <ul class="list-group">
                <li class="list-group-item list-group-item-success" > Personajes</li>
                <li class="list-group-item">id: {{ $usuario['id']}} </li>
                <li class="list-group-item">Name: {{ $usuario['name']}} </li>
                <li class="list-group-item">Status: {{ $usuario['status']}}</li>
                <li class="list-group-item">Species: {{ $usuario['name']}}</li>
                <li class="list-group-item">
                    <div class="btn-group col-md-12 ">
                        <button type="button" class="btn btn-success btn-block dropdown-toggle " data-bs-toggle="dropdown" aria-expanded="false">
                            Detail
                        </button>
                        
            <ul class="dropdown-menu">
                <ul class="list-group">
                <li class="list-group-item">Type: {{ $usuario['type']}}</li>
                <li class="list-group-item">Gender: {{ $usuario['gender']}}</li>
                <li class="list-group-item">Origin: {{ $usuario['origin']['name']}}</li>
                <li class="list-group-item">Origin: {{ $usuario['url']}}</li>
                <li class="list-group-item">Imagen:</li>
                <li class="list-group-item"><img src="{{ $usuario['image']}}"></li>
                </ul>
            </ul>
                    </div>
            </ul>
            <br>
         </div>
         @endforeach
    </div>
</div>
@endsection
