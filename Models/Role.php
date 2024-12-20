<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table='role';
    protected $primarykey='id_role';
    protected $fillable=['nom'];

    public $timestamps=false;

    public function User(){
        return $this->hasMany(User::class,'id_role','id_role');
    }
    use HasFactory;
}
