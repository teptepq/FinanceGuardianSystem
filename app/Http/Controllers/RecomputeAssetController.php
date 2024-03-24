<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use App\Models\User;
use Termwind\Components\Raw;

class RecomputeAssetController extends Controller
{
    //

    public function index() {

    }

    public function recdepreciation(Request $request) {
        // dd($request->all());
        try {
            $var = (object) $request;
    
            $sql = DB::table('fms_g9_assets')->where('AssetID', '=', $var->id)->first();
    
            if ($sql) {
                $depExpense   = 0;
                $lifespan     = $sql->UsefulLifeInYears ?: 0;
                $InitialCost  = $sql->InitialCost  ?: 0;
                $SalvageValue = $sql->SalvageValue ?: 0;
                
                $depExpense = ($InitialCost - $SalvageValue) / $lifespan;
                
                if ($depExpense) {
                    DB::table('fms_g9_assets')->where('AssetID', '=', $var->id)->update([
                        'DepreciationExpense' => $depExpense
                    ]);
                    // Return success response if update is successful
                    return response()->json(['success' => true, 'message' => 'Depreciation expense updated successfully']);
                } else {
                    return response()->json(['success' => false, 'message' => 'Depreciation expense calculation failed']);
                }
            } else {
             
                return response()->json(['success' => false, 'message' => 'Asset not found'], 404);
            }
        } catch (\Exception $e) {
         
            Log::error($e->getMessage());
            // Return error response
            return response()->json(['success' => false, 'message' => 'Server error occurred'], 500);
        }
    
      
    }
}
