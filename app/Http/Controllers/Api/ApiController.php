<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\QueryException;
use Symfony\Component\HttpFoundation\Response;

class ApiController extends Controller
{
    public function index()
    {
        try {
            $users = DB::table('fms_g9_users')->get();
            return response()->json(['users' => $users], Response::HTTP_OK);
        } catch (QueryException $e) {
            // Log the error or handle it in any other appropriate way
            return response()->json(['error' => 'Database error'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }


    public function getAssets()
    {
        try{
            $assets = DB::table('fms_g9_assets')->get();
            return response()->json(['assets' => $assets], Response::HTTP_OK);
        } catch (QueryException $e) {
            return response()->json(['error' => 'Database error'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }

    }

    public function getAssetDetails()
    {
        try{

            $details = DB::table('fms_g9_assets_details')->get();
            return response()->json(['details' => $details], Response::HTTP_OK);

        } catch (QueryException $e) {

        }
    }

    
}
