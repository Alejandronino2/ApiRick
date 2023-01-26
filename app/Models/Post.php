<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Http;


class Post extends Model
{
    use HasFactory;

    protected $fillable =[
            'id',
            'name',
            'status',
            'species',
            'type',
            'gender',
            'origin_name',
            'origin_url',
            'image'
        
    ];
}
?>
 <div>   
        <?php print_r("Se cargaron los datos en la base de datos")?>
        <a class="btn btn-success" href="http://127.0.0.1:8000/home">Regresar</a></div>
        