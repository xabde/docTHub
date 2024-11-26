<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Partie_corp;
use App\Models\Malade;
use App\Models\Consigne;
use App\Models\Symptome;
use App\Models\Medcin;
use App\Models\Rendez_vous;

class Controller extends BaseController
{

    public function afficher_partie_corp(){
        $list=Partie_corp::all();
        return $list;
    }

    public function afficher_malade($idp,$idg){
        //$list=Malade::all();
        $list = Malade::where('id_parties_corps', $idp)
                ->where(function($query) use ($idg) {
                    $query->where('id_genre', $idg)
                          ->orWhere('id_genre', 3);
                })
                ->get();
        return $list;
    }

    public function afficher_Symptome($idm){
        $list=Symptome::where('id_malade',$idm)->get();
        return $list;
    }
    public function afficher_consigne($idm){
        $list=Consigne::where('id_malade',$idm)->get();
        return $list;
    }

    public function afficher_medcin($ids){
        $list=Medcin::where('id_specialite',$ids)->get();
        return $list;
    }

    public function portfolio_medcin($id){
        //$medcin= $medcin=Medcin::where('id_specialite',$id)->get()->first();
        $medcin = DB::table('medcin')
            ->join('users', 'medcin.id_user', '=', 'users.id')
            ->where('medcin.id_medcin', $id)
            ->select('medcin.*', 'users.*') // Sélectionne les colonnes nécessaires
            ->first();
        if($medcin){
            return response()->json(['medcin'=>$medcin],200);
        }else{
            return response()->json(['message'=>'user not found'],404);
        }
    }

    public function reserver(Request $request){
        $x = Rendez_vous::create([
            'date' => $request->date,
            'heur' => $request->heur,
            'ville' => $request->ville,
            'id_medcin' => $request->id_medcin,
            'nom' => $request->nom,
            'description' => $request->description,
            'numero' => $request->numero,
        ]);
        return  $x;
       // RendezVous::create($validatedData);
    }
    public function index_reserver($id){
        $list=Rendez_vous::where('id_medcin',$id)->get();
        return $list;
    }

    
    use AuthorizesRequests, ValidatesRequests;
}
