<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Medcin;

class MedcinController extends Controller
{
   public function register_medcin(Request $request){
       $medcin=Medcin::create([
        'nom_prenom'=>$request->nom_prenom,
        'bio'=>$request->bio,
        'ville'=>$request->ville,
        'id_specialite'=>$request->id_specialite,
        'id_user'=>$request->id_user
       ]);
   }
}
