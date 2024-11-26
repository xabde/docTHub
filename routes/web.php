<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\entrepriseController;
use App\Http\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/afficher-entreprise',[entrepriseController::class,'afficher']);
Route::get('/ajouter-entreprise',[entrepriseController::class,'ajouter']);
Route::post('/suvgarder-entreprise',[entrepriseController::class,'suvgarder']);

Route::get('/list-user', [LoginController::class, 'index_user'])->name('test');
Route::get('/login' ,[LoginController::class,'login'])->name('login');