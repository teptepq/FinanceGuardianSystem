<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Validator;
use Illuminate\Database\QueryException;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

use App\Models\User; 


class UniversalController extends Controller
{
    // as index
    public function index(Request $request){
        $path = view('manager/index');
        return $path;
    }


    // admin process functions
    public function storedata(Request $request){
        // Validation rules
        // $rules = [
        //     'username' => 'required|string',
        //     'email' => 'required|email|unique:users,email',
        //     'password' => 'required|string',
        //     // Add any additional validation rules for other fields
        // ];
    
        // // Custom validation messages
        // $messages = [
        //     'email.unique' => 'The email address is already taken. Please choose a different email.',
        // ];
    
        // // Validate the request data
        // $validator = Validator::make($request->all(), $rules, $messages);
    
        // // Check if validation fails
        // if ($validator->fails()) {
        //     return response()->json(['error' => $validator->errors()], 422);
        // }
    
        try {
            $var = (object) $request;
    
            $taken = User::where('email', $var->email)->exists();
    
            if (!$taken) {
                $year = now()->year;
                $latestUserId = DB::table('users')->where('userid', 'like', $year . '%')->max('userid');
                $incrementedNumber = intval(substr($latestUserId, 4)) + 1;
                $userID = $year . sprintf('%04d', $incrementedNumber);
    
                User::insert([
                    'name' => $var->username,
                    'email' => $var->email,
                    'password' => bcrypt($var->password),
                    'usertype' => $var->usertype ?: '1',
                    'userid'   => $userID,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
    
                DB::table('_personaldata')->insert([
                    'fname' => $var->username,
                    'lname' => $var->lastname ?: '',
                    'mname' => $var->email ?: '',
                    'isactive' => '1',
                    'branch' => $var->branch,
                    'employeeid' => $userID,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
    
                $response = 'User created successfully!';
            } else {
                $response = 'Email already taken. Please choose a different email.';
            }
        } catch (QueryException $e) {
            // Log the error or handle it as needed
            $response = 'An error occurred while creating the user. ' . $e->getMessage();
        }
    
        return response()->json(['message' => $response]);
    }

    public function store(Request $request)
    {
        
        if($request->roleSelector != null){
            $users = User::join('laravel_users as lu','users.id','lu.sid')->where('lu.user_type',$request->roleSelector)->get(); 
        }
        else {
            $users = User::join('laravel_users','laravel_users.sid','users.id')->get(); 
        }
            
       
        return response()->json($users);

    }




    // admin ui front-end 'view
    public function statistics(Request $request){
        return view('accessible/statistics');
    }

    // public function 


    


    // manager ui front-end 'view'
    public function trackMaintenance(Request $request) {

        $data = DB::table('tblsubcontractor')
            ->leftjoin('vendorinfo','vendorinfo.vendor_id','=','tblsubcontractor.vendor_id')
            ->get();
        
        return view('accessible/track-maintenance', compact('data'));
        // return view('accessible/track-maintenance');
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
