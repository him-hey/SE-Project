<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\DiscipleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// ============================================================== USER ============================================================
// Public route
Route::get('/user', [UserController::class, 'index']);
Route::get('/getUserByID/{id}', [UserController::class, 'getUserByID']);
Route::get('/searchUser/search/{username}', [UserController::class, 'searchUser']);

// Private route
Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
Route::put('/updateUser/{id}', [UserController::class, 'updateUser']);
Route::delete('/deleteUser/{id}', [UserController::class, 'deleteUser']);

// ============================================================== STUDENT ============================================================
// Public route
Route::get('students', [StudentController::class, 'index']);
Route::get('students/{id}', [StudentController::class, 'show']);
Route::get('/searchStudent/search/{studentname}', [StudentController::class, 'searchStudent']);

// Private route
Route::post('students', [StudentController::class, 'store']);
Route::put('students/{id}', [StudentController::class, 'update']);
Route::delete('students/{id}', [StudentController::class, 'destroy']);

// ============================================================== PERMISSION ============================================================
// Public route
Route::get('permissions', [PermissionController::class, 'index']);
Route::get('permissions/{id}', [PermissionController::class, 'show']);

// Private route
Route::post('permissions', [PermissionController::class, 'store']);
Route::put('permissions/{id}', [PermissionController::class, 'update']);
Route::delete('permissions/{id}', [PermissionController::class, 'destroy']);

// ============================================================== DISCIPLE ============================================================
// Ppublic route
Route::get('disciple', [DiscipleController::class, 'index']);
Route::get('disciple/{id}', [DiscipleController::class, 'show']);

// Private route
Route::post('disciple', [DiscipleController::class, 'store']);
Route::put('disciple/{id}', [DiscipleController::class, 'update']);
Route::delete('disciple/{id}', [DiscipleController::class, 'destroy']);