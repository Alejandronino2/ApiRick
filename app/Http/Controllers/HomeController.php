<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\home;
use Illuminate\Support\Facades\Http;
use App\Models\Post;



class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $usuario = HTTP::get('https://rickandmortyapi.com/api/character');
        $usuarioArray = $usuario->json();
        return view('home', compact('usuarioArray'));

       
    }
}
    

