<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UniversalController extends Controller
{
    // as index
    public function index(Request $request){
        $path = view('manager/index');
        return $path;
    }


    // admin ui front-end 'view
    public function statistics(Request $request){
        return view('accessible/statistics');
    }

    // public function 


    


    // manager ui front-end 'view'
    public function trackMaintenance(Request $request){
        return view('accessible/track-maintenance');
    }

    public function announcement(Request $request){
        return view('accessible/announcement');
    }

    public function taxcalculation(Request $request){
        return view('accessible/taxcalfixedasset');
    }

    public function client(Request $request){
        return view('accessible/clients');
    }

    public function report(Request $request){
        return view('accessible/reports');
    }

    public function profile(Request $request){
        return view('accessible/profile');
    }

    public function customerservice(Request $request){
        return view('accessible/help');
    }

}
