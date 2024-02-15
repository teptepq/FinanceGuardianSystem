<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuperadminController;
use App\Http\Controllers\ConfigurationController; 

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

Auth::routes();


// Route::get('/home',     [App\Http\Controllers\HomeController::class, 'index'])      ->name('home');
// Route::get('/invoice',  [App\Http\Controllers\HomeController::class, 'invoice'])    ->name('invoice');

// ADMIN SIDE
Route::middleware(['auth','admin'])->prefix('admin')->name('admin.')->group(function(){
    
    // view blade 
    Route::get('/admintest',            [App\Http\Controllers\HomeController::class, 'admin'])             ->name('admintest'); 
    Route::get('/',                     [App\Http\Controllers\SuperadminController::class, 'index'])       ->name('home');
    Route::get('/configuration',         [App\Http\Controllers\SuperadminController::class, 'configuration'])       ->name('configuration');
    // Route::get('admin/configuration',        [App\Http\Controllers\ConfigurationController::class, 'index'])        ->name('configuration');


});


// Route::middleware([])

// Route::get()





// USER SIDE