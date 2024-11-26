<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Role;
use App\Models\Medcin;
use App\Models\Specialite;
class LoginController extends Controller
{
    

    public function login(Request $request){
        //
        //return Auth::user();
        if (Auth::attempt(['email'=>$request->email,'password'=> $request->email])) {
            $user=auth()->user();
            if($user->active==1){
                $token=$user->createToken('login_test');
                return  response()->json([
                    'success'=>true,
                    'token'=>$token->plainTextToken,
                    'user'=>$user
                ],200);
            }else{
                $token=$user->createToken('login_test');
            return  response()->json([
                'success'=>false,
                'message'=>'votre compte est deactive',
                'token'=>$token->plainTextToken,
                'user'=>$user
            ],200);
            }
             
            $token=$user->createToken('login_test');
            return  response()->json([
                'success'=>true,
                'token'=>$token->plainTextToken,
                'user'=>$user
            ],200);
        }else{
            return response()->json(['error' => 'Mot de passe incorrect ou email invalide'], 401);
        }
        
        
        
        
    }

    public function register_user(Request $request){
        // return ($request);
        // $new_user=$request->validated();
        return User::create([
            'name' => $request->name,
            'email' => $request->email,
            'active'=>0,
            'password' => Hash::make($request->password),
            'id_role' => 2,
            
        ]);
       // return 'ffff';
    }

    public function register_medcin(Request $request,$id){
       // return $request;
       return Medcin::create([
        'nom_prenom' => $request->name,
        'ville'=>$request->ville,
        'bio'=>$request->bio,
        'id_user'=>$id,
        'id_specialite'=>$request->id_specialite

       ]);
    } 

    public function register_index(){
          $user=Role::all();
          $partie_corp=Specialite::all();
          return ['role'=>$user,'specialite'=>$partie_corp];
    }

    
}
