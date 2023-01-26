<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\home;
use Illuminate\Support\Facades\Http;

class PostController extends Controller
{
    public function store()
    {
        
        $usuario = HTTP::get('https://rickandmortyapi.com/api/character');
        $usuarioArray = $usuario->json();
        
    foreach ($usuarioArray['results'] as $usuario) {
        Post::updateOrCreate(
            ['id'=> $usuario['id']],
            [
            'name'=> $usuario['name'],
            'status'=> $usuario['status'],
            'species'=> $usuario['species'],
            'type'=> $usuario['type'],
            'gender'=> $usuario['gender'],
            'origin_name'=> $usuario['origin']['name'],
            'origin_url'=> $usuario['url'],
            'image'=> $usuario['image'],
            ]
        );
    }
    dd("Data Strored");
    
    }

}