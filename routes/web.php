<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuperadminController;
use App\Http\Controllers\ConfigurationController; 
use App\Http\Controller\UniversalController;
use App\Http\Controller\UniversalProcess;
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
Route::get('/test-image', function () {
    return view('test_image');
});




Route::post('/user-account', [App\Http\Controllers\UniversalController::class, 'registers'])->name('user-account');



Route::middleware(['auth','superadmin'])->prefix('access')->group(function(){


    // view blade
    Route::GET('/home',   [App\Http\Controllers\UniversalController::class, 'index'])->name('shome');
    // Route::GET('/configuration',   [App\Http\Controllers\ConfigurationController::class, 'configuration'])->name('configuration');

});
// ADMIN SIDE
Route::middleware(['auth','admin'])->prefix('admin')->group(function(){
    // view blade
    Route::get('/home',                            [App\Http\Controllers\SuperadminController::class, 'home'])               ->name('home');
    Route::get('/user-management',                 [App\Http\Controllers\SuperadminController::class, 'usermanagement'])     ->name('user-management'); 
    Route::get('/customer-service',                [App\Http\Controllers\SuperadminController::class, 'cservice'])           ->name('cservice');
    Route::get('/tax-rate',                        [App\Http\Controllers\SuperadminController::class, 'tax'])                ->name('taxrate');





    // PROCESS
    Route::POST('/addusers',                       [App\Http\Controllers\SuperadminController::class, 'addusers'])           ->name('addusers');
    Route::POST('/addroledatas',                   [App\Http\Controllers\SuperadminController::class, 'addroledatas'])       ->name('addroledatas');                                                   
    Route::GET('/getusers',                        [App\Http\Controllers\SuperadminController::class, 'getusers'])           ->name('getusers'); 
    Route::GET('/getusersdesc',                    [App\Http\Controllers\SuperadminController::class, 'getusersdesc'])       ->name('getusersdesc');
    Route::GET('/getTaxes',                        [App\Http\Controllers\SuperadminController::class, 'getTaxes'])           ->name('getTaxes');                











    // Route::GET('/generate-report',              [App\Http\Controllers\ReportAccessController::class, 'generateReport'])    ->name('report');
    Route::POST('/storedata',                      [App\Http\Controllers\UniversalController::class, 'storedata'])            ->name('storedata');
    // Route::get('/storeinfo',                    [App\Http\Controllers\UniversalController::class, 'store'])               ->name('storeinfos');


    // // view blade 
    // Route::get('/admintest',                    [App\Http\Controllers\HomeController::class,       'admin'])               ->name('admintest'); 
    // Route::get('/home',                         [App\Http\Controllers\SuperadminController::class, 'index'])               ->name('home');
    Route::get('/configuration',                   [App\Http\Controllers\SuperadminController::class, 'configuration'])       ->name('configuration');
    Route::get('/profile',                      [App\Http\Controllers\UniversalController::class, 'profile'])              ->name('profile');
    Route::get('/statistic-reports',            [App\Http\Controllers\UniversalController::class, 'statistics'])           ->name('statistics');
    // // Route::get('admin/configuration',        [App\Http\Controllers\ConfigurationController::class, 'index'])        ->name('configuration');

    Route::post('/notice',                      [App\Http\Controllers\UniversalProcess::class, 'isNotice'])                       ->name('notice');
});


// USER SIDE 'Manager'
Route::middleware(['auth','user'])->prefix('manager')->group(function(){


    // PORCESS
    // routes/web.php
    Route::GET('/generate-report',       [App\Http\Controllers\ReportAccessController::class, 'generateReport'])          ->name('ugenerateReport');
    Route::post('/notice',               [App\Http\Controllers\UniversalProcess::class, 'isNotice'])                      ->name('unotice');

    
    // view blade
    Route::get('/home',                  [App\Http\Controllers\UniversalController::class, 'index'])                      ->name('uhome');
    Route::get('/track-maintenance',     [App\Http\Controllers\UniversalController::class, 'trackMaintenance'])           ->name('utrackmaintenance');
    Route::get('/announcement',          [App\Http\Controllers\UniversalController::class, 'announcement'])               ->name('uannouncement');
    Route::get('/tax-calculation',       [App\Http\Controllers\UniversalController::class, 'taxcalculation'])             ->name('utaxCal');
    Route::get('/client',                [App\Http\Controllers\UniversalController::class, 'client'])                     ->name('uclient');
    Route::get('/report',                [App\Http\Controllers\UniversalController::class, 'report'])                     ->name('ureport');
    Route::get('/profile',               [App\Http\Controllers\UniversalController::class, 'profile'])                    ->name('uprofile');
    Route::get('/help',                  [App\Http\Controllers\UniversalController::class, 'customerservice'])            ->name('uhelp');

    

});
// Customer 'EMPLOYEE && CASUAL'
Route::middleware(['auth','customer'])->prefix('customer')->group(function(){


    Route::get('/home',                  [App\Http\Controllers\UniversalController::class, 'index'])                      ->name('chome');
    Route::get('/profile',               [App\Http\Controllers\UniversalController::class, 'profile'])                    ->name('cprofile');
    Route::get('/help',                  [App\Http\Controllers\UniversalController::class, 'customerservice'])            ->name('chelp');

});






