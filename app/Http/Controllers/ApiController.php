<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User; 

use Illuminate\Support\Facades\DB;





class ApiController extends Controller
{

    public function index()
    {
        $users = DB::table('fms_g9_users')->get();
        return response()->json(['users' => $users], 200);
    }

    

}



