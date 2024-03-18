<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use App\Models\User; 

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

    public function cservice(){
        return view('admin/cservice');
    }

    public function tax(){
        return view('admin/tax');
    }
    
    public function home(Request $request){
        return view('admin/home');
    }


    public function configuration(Request $request){

        return view('manager/configuration');

    }   

    public function usermanagement(Request $request){

        return view('admin/user-management');
    }


    public function addusers(Request $request){

        try {
            $var = (object) $request;


            if($var->newpass != $var->confirmpass){
                return response()->json([
                 'status' => 400,
                 'message' => 'Passwords do not match'
                ], 400);
            }
    
            $taken = User::where('email', $var->pemail)->exists();
    
            if (!$taken) {

                $year = now()->year;
                $latestUserId = DB::table('fms_g9_users')->where('userid', 'like', $year . '%')->max('userid');
                $incrementedNumber = intval(substr($latestUserId, 4)) + 1;
                $userID = $year . sprintf('%04d', $incrementedNumber);
    
                User::insert([
                    'name' => $var->lname.', '.$var->fname.' '.$var->mname,
                    'email' => $var->pemail,
                    'password' => bcrypt($var->newpass),
                    'usertype' => $var->selRole ?: '1',
                    'userid'   => $userID,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
    
                DB::table('_personaldata')->insert([
                    'fname' => $var->fname ?: '',
                    'lname' => $var->lname ?: '',
                    'mname' => $var->mname ?: '',
                    'isactive' => '1',
                    'branch' => $var->branch ?: '1',
                    'employeeid' => $userID,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
    
                $response = 'User created successfully!';

            } else {

                $response = 'Email already taken. Please choose a different email.';

            }
            
        } catch (QueryException $e) {
          
            $response = 'An error occurred while creating the user. ' . $e->getMessage();

        }
    
        return response()->json(['message' => $response]);
    }

    public function getusers(Request $request){
        try {
      
            $requestData = (object) $request;

            $usersQuery = DB::table('fms_g9_users as u')
                    ->select('userid','name','u.email','usertype')
                    ->leftjoin('_personaldata as pd','pd.employeeid','u.userid');
           
            if ($requestData->roleSelector != "") {
                $usersQuery = $usersQuery->where('usertype', '=', $requestData->roleSelector);
            }

            $usersQuery = $usersQuery->get();
         
            $formattedPromotions = [];
            foreach ($usersQuery as $data) {
               
                $formattedPromotions[] = [
                    'Username' => $data->userid ?: 'N/A',
                    'Name' => $data->name,
                    'MicrosoftEmail' => $data->email,
                    'PersonalEmail' => $data->email,
                    'usertype' =>  $this->userdesc($data->usertype)
                ];
            }

            return response()->json($formattedPromotions);

            

        } catch (\Exception $e) {
     
            return response()->json(['error' => 'An error occurred while processing the request.'], 500);

        }
    }

    public function getusersdesc(Request $request){

        try {

            $requestData = (object) $request; 

            $usersQuery = DB::table('fms_g9_tbluserdescrip')->get();
         
            $formattedPromotions = [];
            foreach ($usersQuery as $data) {
               
                $formattedPromotions[] = [
                    'usertype' => $data->usertype,
                    'userdesc' => $data->userdesc
                ];
                
            }

            return response()->json($formattedPromotions);

        } catch (\Exception $e) {

            return response()->json(['error' => 'An error occurred while processing the request.'], 500);

        }

    }

    public function getTaxes(Request $request){

        $taxQuery = DB::table('fms_g9_taxrates')->get();
         
            $tax = [];
            foreach ($taxQuery as $data) {
               
                $tax[] = [
                    'taxid'   => $data->tax_rate_id,
                    'taxname' => $data->tax_rate_name,
                    'description' => $data->description,
                    'percent' => $data->rate_percentage.'%',
                ];
                
            }

            return response()->json($tax);

    }

    public function addroledatas(Request $request){
        
        try {
            $var = (object) $request;
            // dd($var->rid);
            $exist = DB::table('fms_g9_tbluserdescrip')->where('usertype', $var->rid)->exists();

            if($exist){

                $response = 'Role ID already exists!';

            } else {
                DB::table('fms_g9_tbluserdescrip')->insert([
                    'usertype' => $var->rid,
                    'userdesc' => $var->rname,
                    'created_at' => now(),
                    'updated_at' => now()
                ]);
                
                $response = 'Role has been successfully added!';
            }

        } catch (\Exception $e) {

            return response()->json(['error' => 'An error occurred while processing the request.'], 500);

        }

        return response()->json(['message' => $response]);


    }

    public function userdesc($usertype){
    
        $sql = DB::table('fms_g9_tbluserdescrip')
            ->select('userdesc')
            ->where('usertype',$usertype)
            ->first();
            

        return $sql->userdesc;


    }
}
