<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

class SuperadminController extends Controller
{
    //

    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('admin');
        $this->middleware('superadmin');
    }

    public function index(Request $request){
        // dd(Auth::user(),$request->all());         
        $path = "";
        $path = view('manager/index');
        
        return $path;
    }


    

    public function configuration(Request $request){

        return view('manager/configuration');

    }   

    // public function INDEX(Request $request){

    //     return view('manager/index');      

    // }
}
