<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rendez_vous extends Model
{
    protected $table='rendez_vous';
    protected $primaryKey='id_rendez_vous';
    protected $fillable=['id_medcin','numero','description','nom','ville','heur','date'];
    public $timestamps=true;
    public function medcin(){
        $this->belongsTo(Medcin::class,'id_medcin','id_medcin');
    }

    use HasFactory;
}
