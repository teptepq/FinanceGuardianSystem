<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuperadminController;
use App\Http\Controllers\ConfigurationController; 
use App\Http\Controller\UniversalController;
use App\Http\Controller\HomeController;

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
Route::middleware(['auth','admin'])->prefix('admin')->group(function(){
    
    // view blade 
    Route::get('/admintest',                    [App\Http\Controllers\HomeController::class, 'admin'])                     ->name('admintest'); 
    Route::get('/home',                         [App\Http\Controllers\SuperadminController::class, 'index'])               ->name('home');
    Route::get('/configuration',                [App\Http\Controllers\SuperadminController::class, 'configuration'])       ->name('configuration');
    Route::get('/profile',                      [App\Http\Controllers\UniversalController::class, 'profile'])              ->name('profile');
    Route::get('/statistic-reports',              [App\Http\Controllers\UniversalController::class, 'statistics'])           ->name('statistics');
    // Route::get('admin/configuration',        [App\Http\Controllers\ConfigurationController::class, 'index'])        ->name('configuration');
});


// USER SIDE
Route::middleware(['auth','user'])->prefix('user')->group(function(){


    // process
    Route::post('/',                     [App\Http\Controllers\UniversalController::class, ''])                           ->name('');

    // view blade
    Route::get('/home',                  [App\Http\Controllers\UniversalController::class, 'index'])                      ->name('uhome');
    Route::get('/track-maintenance',     [App\Http\Controllers\UniversalController::class, 'trackMaintenance'])           ->name('utrackmaintenance');
    Route::get('/announcement',          [App\Http\Controllers\UniversalController::class, 'announcement'])               ->name('uannouncement');
    Route::get('/tax-calculation',       [App\Http\Controllers\UniversalController::class, 'taxcalculation'])             ->name('utaxCal');
    Route::get('/client',                [App\Http\Controllers\UniversalController::class, 'client'])                     ->name('uclient');
    Route::get('/report',                [App\Http\Controllers\UniversalController::class, 'report'])                     ->name('ureport');
    Route::get('/profile',               [App\Http\Controllers\UniversalController::class, 'profile'])                     ->name('uprofile');
    

});






