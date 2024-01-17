<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\WisataController;
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

Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');
Route::post('/register', [HomeController::class, 'register'])->name('register');
Route::post('/login', [HomeController::class, 'login'])->name('login.api');
Route::post('/store-gambar', [WisataController::class, 'store'])->name('store.api');

Route::get('/wisata', [WisataController::class, 'index']);
Route::put('/wisata/{id}', [WisataController::class, 'update']);
Route::delete('/wisata/{id}', [WisataController::class, 'destroy']);