<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Medcin extends Model
{  
    protected $table='medcin';
    protected $primaryKey='id_medcin';
    protected $fillable=['nom_prenom','ville','bio','id_specialite','id_user'];

    public function specialite(){
        $this->belongsTo(Specialite::class,'id_specialite','id_specialite');
    }

    public  function User(){
        return $this->belongsTo(User::class,'id','id_user');
    }

    public function Rendez_vous(){
        return $this->hasMany(Rendez_vous::class,'id_medcin','id_medcin');
    }
    use HasFactory;
}
