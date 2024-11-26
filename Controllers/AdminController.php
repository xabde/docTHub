<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Role;
use App\Models\Medcin;
use App\Models\Specialite;
use App\Models\Malade;
use App\Models\Symptome;
use App\Models\Consigne;

class AdminController extends Controller
{
    //afficher la list des user pour admin
    public function index_user(Request $request){
       // $auth=Auth();
        //console les information de l'objet Auth
        
        // if($auth->user()->can('admin')){
            $list=User::where('id_role',2)->get();
            return $list;
        // }else{
            //return 'list';
        // }
       // return response()->json(['error' =>   Auth::user()], 200);
    }

    /// active un compte

    public function active_user($id){
       // if(Auth::user()->can('admin')){
            $user=User::findOrFail($id);
            if($user){
                if($user->active==0){
                    $user->update([
                        'active'=>1,
                    ]);
                    return response()->json(['message'=>'user activated successfully'],200);
                }else{
                    $user->update([
                        'active'=>0,
                    ]);
                    return response()->json(['message'=>'user desactivated successfully'],200);

                }
            }else{
                return response()->json(['eroor'=>'user not found'],404);
            }
        //}

       
    }

    /// delete user
    public function delete($id){
        $medcin=Medcin::where('id_user',$id)->get()->first();
        //return $medcin;
        $user=User::findOrFail($id);
       // return $user;
        if($user){
            $medcin->delete();
            $user->delete();
            return response()->json(['message'=>'user deleted successfully'],200);

        }else{
            return response()->json(['message'=>'user not found'],404);
        }
    }

    public function details($id){
         $medcin=DB::table('medcin')
         ->join('users', 'medcin.id_user', '=', 'users.id')
         ->where('medcin.id_user', $id)
         ->select('medcin.*', 'users.*') // Sélectionne les colonnes nécessaires
         ->first();
        if($medcin){
            return response()->json(['medcin'=>$medcin],200);
        }else{
            return response()->json(['message'=>'user not found'],404);
        }
    }

    public function add_malade(Request $request){
        $malade=Malade::create([
            'nom'=>$request->nom,
            'description'=>$request->description,
            'id_parties_corps'=>$request->id_parties_corps,
            'id_genre'=>$request->id_genre,
            'id_specialite'=>$request->id_specialite
        ]);
         return  response()->json([
            'success'=>true,
            'malade'=>$malade
        ],200);
    }

    public function add_symptome(Request $request ){
        // objet {nom:value,malade:id_malade}
        //return $request;
        $symptome=Symptome::create([
            'description'=>$request->nom,
            'id_malade'=>$request->malade
        ]);
        return $symptome;
    }

    public function add_consigne(Request $request ){
        // objet {nom:value,malade:id_malade}
        //return $request;
        $consigne=Consigne::create([
            'description'=>$request->nom,
            'id_malade'=>$request->malade
        ]);
        return $consigne;
    }
    
    
}
