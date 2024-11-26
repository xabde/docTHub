<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Specialite extends Model

{
    protected $table='specialite';
    protected $primarykey='id_specialite';
    protected $fillable=['nom','description'];
    public $timestamps=true;
    
    use HasFactory;
}
