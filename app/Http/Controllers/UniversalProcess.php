<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UniversalProcess extends Controller
{
        
    public function isNotice(Request $request){
        // $var = (object) $request; object into array
        
        $notice = "";
        $username = auth::user()->name;
        $istype   = auth::user()->usertype;

        if ( $request->isclick ) { $notice = '1'; }
      
        // dd(auth::user());

       DB::table('users')
            ->where('name', $username)
            ->where('usertype', $istype)
            ->update([
        'isNotice' => $notice
        // 'column2' => 'new value 2',
        // add more columns as needed
        ]);
        
        return "Record updated successfully!";

    }

    public function subcontractorLoadData(Request $request){


    }
    
}
