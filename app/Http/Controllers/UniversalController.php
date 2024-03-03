<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash; // Import the Hash facade
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use App\Models\User; 


class UniversalController extends Controller
{


    const SUCCESS_STATUS = 200;

    // as index
    public function index(Request $request){
        $path = view('manager/index');
        return $path;
    }


    public function registers(Request $request)
    {
        // Validate the input data
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|string|min:8',
            'usertype'  => '2', // Assuming 'usertype' is required
        ]);
            
        // dd($request->all());    

        if($request->password != $request->password_confirmation){
            return response()->json([
             'status' => 400,
             'message' => 'Passwords do not match'
            ], 400);
        }
        // Create the user
        $user = User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => $validatedData['password'], // Hash the password
        ]);

        if ($user) {
            DB::table('_personaldata')->insert([
                'fname' => $user->name,
                'lname' => '', // Assuming these fields can be empty
                'mname' => '', // Assuming these fields can be empty
                'isactive' => '1',
                'isEmployee' => '1',
                'employeeid' => $user->id, // Using user's id as employee id
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Prepare the response
        $success['token'] = $user->createToken('MyApp')->accessToken;
        $success['name'] = $user->name;
        $success['email'] = $user->email;
        $success['usertype'] = '2';

        // Return the response with a success message
        $message = 'User registered successfully!';
        return response()->json(['success' => $success, 'message' => $message], self::SUCCESS_STATUS);
    }


    // admin process functions
    public function storedata(Request $request){

    
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

        $data = DB::table('fms_g9_tblSubcontractor')
            ->leftjoin('fms_g9_vendorinfo','fms_g9_vendorinfo.vendor_id','=','fms_g9_tblSubcontractor.vendor_id')
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
