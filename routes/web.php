<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuperadminController;
use App\Http\Controllers\ConfigurationController; 
use App\Http\Controller\UniversalController;
use App\Http\Controller\UniversalProcess;
use App\Http\Controller\HomeController;
use App\Http\Controllers\EmployeeController;
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

Route::GET('/', function () {
    return view('welcome');
});

Auth::routes();


// Route::get('/home',     [App\Http\Controllers\HomeController::class, 'index'])      ->name('home');
// Route::get('/invoice',  [App\Http\Controllers\HomeController::class, 'invoice'])    ->name('invoice');
Route::GET('/test-image', function () {
    return view('test_image');
});




Route::POST('/user-account', [App\Http\Controllers\UniversalController::class, 'registers'])->name('user-account');



Route::middleware(['auth','superadmin'])->prefix('access')->group(function(){
    // view blade
    Route::GET('/home',   [App\Http\Controllers\UniversalController::class, 'index'])->name('shome');
    // Route::GET('/configuration',   [App\Http\Controllers\ConfigurationController::class, 'configuration'])->name('configuration');

});
// ADMIN SIDE
Route::middleware(['auth','admin'])->prefix('admin')->group(function(){
    // view blade
    Route::GET('/home',                            [App\Http\Controllers\SuperadminController::class, 'home'])               ->name('home');
    Route::GET('/user-management',                 [App\Http\Controllers\SuperadminController::class, 'usermanagement'])     ->name('user-management'); 
    Route::GET('/depreciation-calculation',        [App\Http\Controllers\SuperadminController::class, 'depreciation'])       ->name('user-depreciation'); 
    Route::GET('/customer-service',                [App\Http\Controllers\SuperadminController::class, 'cservice'])           ->name('cservice');
    Route::GET('/tax-rate',                        [App\Http\Controllers\SuperadminController::class, 'tax'])                ->name('taxrate');
    Route::GET('/tracking',                        [App\Http\Controllers\SuperadminController::class, 'tracking'])           ->name('tracking');
    Route::GET('/announcement',                    [App\Http\Controllers\SuperadminController::class, 'announcement'])       ->name('announcement');
    Route::GET('/messaging',                       [App\Http\Controllers\SuperadminController::class, 'messaging'])          ->name('messaging');
    Route::GET('/company',                         [App\Http\Controllers\SuperadminController::class, 'company'])            ->name('company');
    Route::GET('/employee',                        [App\Http\Controllers\SuperadminController::class, 'employee'])           ->name('employee');           
    Route::GET('/tax-calculation',                 [App\Http\Controllers\SuperadminController::class, 'taxcalculationIndex'])     ->name('taxcalculation');
    Route::GET('/asset/depreciation',              [App\Http\Controllers\SuperadminController::class, 'assetdepreciationIndex'])     ->name('assetdepreciation');






    // PROCESS
    Route::POST('/addusers',                       [App\Http\Controllers\SuperadminController::class, 'addusers'])                     ->name('addusers');
    Route::POST('/addroledatas',                   [App\Http\Controllers\SuperadminController::class, 'addroledatas'])                 ->name('addroledatas');                                                   
    Route::GET('/getusers',                        [App\Http\Controllers\SuperadminController::class, 'getusers'])                     ->name('getusers'); 
    Route::GET('/getusersdesc',                    [App\Http\Controllers\SuperadminController::class, 'getusersdesc'])                 ->name('getusersdesc');
    Route::GET('/getTaxes',                        [App\Http\Controllers\SuperadminController::class, 'getTaxes'])                     ->name('getTaxes');    
    Route::GET('/getAssetInventory',               [App\Http\Controllers\SuperadminController::class, 'getAssetInventory'])            ->name('getAssetInventory');      

    Route::GET('/getdepreciation',                 [App\Http\Controllers\SuperadminController::class, 'getdepreciation'])              ->name('getdepreciation'); 
    Route::GET('/getassetdepreciation',            [App\Http\Controllers\SuperadminController::class, 'getassetdepreciation'])         ->name('getassetdepreciation');             
    Route::POST('/recompute',                      [App\Http\Controllers\RecomputeAssetController::class, 'recdepreciation'])          ->name('recompute');
                   
    


    Route::get('/employees', [EmployeeController::class, 'index'])->name('getEmployees');










    // Route::GET('/generate-report',              [App\Http\Controllers\ReportAccessController::class, 'generateReport'])    ->name('report');
    Route::POST('/storedata',                      [App\Http\Controllers\UniversalController::class, 'storedata'])            ->name('storedata');
    // Route::get('/storeinfo',                    [App\Http\Controllers\UniversalController::class, 'store'])               ->name('storeinfos');


    // // view blade 
    // Route::get('/admintest',                    [App\Http\Controllers\HomeController::class,       'admin'])               ->name('admintest'); 
    // Route::get('/home',                         [App\Http\Controllers\SuperadminController::class, 'index'])               ->name('home');
    Route::GET('/configuration',                   [App\Http\Controllers\SuperadminController::class, 'configuration'])       ->name('configuration');
    Route::GET('/profile',                         [App\Http\Controllers\UniversalController::class, 'profile'])              ->name('profile');
    Route::GET('/statistic-reports',               [App\Http\Controllers\UniversalController::class, 'statistics'])           ->name('statistics');
    // // Route::get('admin/configuration',        [App\Http\Controllers\ConfigurationController::class, 'index'])        ->name('configuration');

    Route::POST('/notice',                         [App\Http\Controllers\UniversalProcess::class, 'isNotice'])                ->name('notice');
});




// USER SIDE 'Manager'
Route::middleware(['auth','user'])->prefix('manager')->group(function(){


    // PORCESS
    // routes/web.php
    Route::GET('/getAssetInventory',               [App\Http\Controllers\SuperadminController::class, 'getAssetInventory'])            ->name('mgetAssetInventory');  
    Route::GET('/depreciation',                    [App\Http\Controllers\SuperadminController::class, 'depreciation'])                 ->name('mdepreciation'); 
    Route::GET('/tracking',                        [App\Http\Controllers\SuperadminController::class, 'tracking'])                     ->name('mtracking');

    // Route::get('/muser-management',                 [App\Http\Controllers\SuperadminController::class, 'managerusermanagement'])     ->name('muser-management'); 




    // Process
    Route::GET('/getdepreciation',                 [App\Http\Controllers\SuperadminController::class, 'getdepreciation'])              ->name('mgetdepreciation');    
    Route::POST('/recompute',                      [App\Http\Controllers\RecomputeAssetController::class, 'recdepreciation'])          ->name('mrecompute');







    Route::GET('/generate-report',       [App\Http\Controllers\ReportAccessController::class, 'generateReport'])          ->name('ugenerateReport');
    Route::POST('/notice',               [App\Http\Controllers\UniversalProcess::class, 'isNotice'])                      ->name('unotice');

    
    // view blade
    Route::GET('/home',                  [App\Http\Controllers\UniversalController::class, 'index'])                      ->name('uhome');
    Route::GET('/track-maintenance',     [App\Http\Controllers\UniversalController::class, 'trackMaintenance'])           ->name('utrackmaintenance');
    Route::GET('/announcement',          [App\Http\Controllers\UniversalController::class, 'announcement'])               ->name('uannouncement');
    Route::GET('/tax-calculation',       [App\Http\Controllers\UniversalController::class, 'taxcalculation'])             ->name('utaxCal');
    Route::GET('/client',                [App\Http\Controllers\UniversalController::class, 'client'])                     ->name('uclient');
    Route::GET('/report',                [App\Http\Controllers\UniversalController::class, 'report'])                     ->name('ureport');
    Route::GET('/profile',               [App\Http\Controllers\UniversalController::class, 'profile'])                    ->name('uprofile');
    Route::GET('/help',                  [App\Http\Controllers\UniversalController::class, 'customerservice'])            ->name('uhelp');

    

});
// Customer 'EMPLOYEE && CASUAL'
Route::middleware(['auth','customer'])->prefix('customer')->group(function(){


    Route::GET('/home',                  [App\Http\Controllers\UniversalController::class, 'index'])                      ->name('chome');
    Route::GET('/profile',               [App\Http\Controllers\UniversalController::class, 'profile'])                    ->name('cprofile');
    Route::GET('/help',                  [App\Http\Controllers\UniversalController::class, 'customerservice'])            ->name('chelp');

});






