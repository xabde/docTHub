<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/afficher-partie_corp ', [Controller::class, 'afficher_partie_corp']);
Route::get('/afficher-malade/{idp}/{idg} ', [Controller::class, 'afficher_malade']);
Route::get('/afficher-consigne/{idm} ', [Controller::class, 'afficher_consigne']);
Route::get('/afficher-symptome/{idm} ', [Controller::class, 'afficher_Symptome']);
Route::get('/afficher-medcin/{ids} ', [Controller::class, 'afficher_medcin']);
Route::get('portfolio-medcin/{id}', [Controller::class, 'portfolio_medcin']);
Route::post('/reservation', [Controller::class, 'reserver']);
Route::get('/list/reservation/{id}', [Controller::class, 'index_reserver']);





///////////login & register parties//////////////////////////////////////////////////////////

Route::post('/login' ,[LoginController::class,'login'])->name('login');
Route::post('/register-user' ,[LoginController::class,'register_user']);
Route::post('/register-medcin/{id}' ,[LoginController::class,'register_medcin']);
Route::get('/register-index' ,[LoginController::class,'register_index']);

/////////admin space //////////////////////////////////////////////////////////////////////
Route::get('/list-user', [AdminController::class, 'index_user']);
Route::get('/user-active/{id}', [AdminController::class, 'active_user']);
Route::get('/user-delete/{id}', [AdminController::class, 'delete']);
Route::get('/user-details/{id}', [AdminController::class, 'details']);

Route::post('/add-malade', [AdminController::class, 'add_malade']);
Route::post('/add-symptome', [AdminController::class, 'add_symptome']);
Route::post('/add-consigne', [AdminController::class, 'add_consigne']);

// Route::middleware('auth:api')->group(function () {
//     // Vos routes nécessitant une authentification
//     Route::get('/list-user', [AdminController::class, 'index_user'])->name('test');

//     // Exemple de route utilisant votre méthode index_user
//    // Route::get('/users', 'YourController@index_user');
// });