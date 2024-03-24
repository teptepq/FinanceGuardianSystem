<?php

namespace App\Http\Controllers\Auth;


use Illuminate\Http\Request; 
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;
    
    /**
     * Where to redirect users after login.
     *
     * @var string
     */
 
    protected $redirectTo = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
    
        $input = $request->all();
        
        $this->validate($request,[
            'email'    => 'required|email',
            'password' => 'required',
        ]);
      
        if(auth()->attempt(array('email' => $input['email'], 'password' => $input['password'])))
        {
            // dd(auth::user());  
            if(auth::user()->usertype == '1' || auth::user()->usertype == '0') 
            {
                return response()->json(['redirect' => route('home'), 'message' => 'Login successful']);
            } 
            else if ( auth::user()->usertype == '2' )
            {
                return response()->json(['redirect' => route('uhome'), 'message' => 'Login successful']);
            }
            else if ( auth::user()->usertype == '3' ) {
                return response()->json(['redirect' => route('uhome'), 'message' => 'Login successful']);
                // return response()->json(['redirect' => route('chome'), 'message' => 'Login successful']);
            }
            // else if ( auth::user()->usertype == '0' ) {
            //     return response()->json(['redirect' => route('shome'),'message' => 'Login successful']);
            // }
            else {  
                return response()->json(['error' => 'Invalid credentials'], 401);       
            }
        }
        else {
            return response()->json(['error' => 'Invalid credentials'], 401);    
        }

    }   
}
