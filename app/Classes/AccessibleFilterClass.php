<?php

namespace App\Classes;


use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Form;


class AccessibleFilterClass
{
  
  public function Receipt() {
    try {
        $user = Auth::user()->usertype;
        // dd($user);
        $data = DB::table('tbluserdesc')
                    ->select('cid', 'descid')
                    ->distinct();

        if ($user == '2') {
            $data = $data->where('cid', '!=', '0')->where('cid', '!=', '1');
        }

        $data = $data->distinct()
                     ->orderBy('cid')
                     ->get();

        $result = array();

        if( $user == '1' ) {
          $result[''] = "- All Usertype -";
        } else {
          $result[''] = "- Select Recipient -";
        }

        foreach ($data as $key => $value) {
            $result[$value->cid] = $value->descid;
        }

        return $result;

    } catch (\Exception $e) {
        // Handle exception here, you can log it or re-throw if necessary
        return ['error' => $e->getMessage()];
    }
  }


  public function loadData() {
    $users = array();
    // $users = User::all(); 
    $users = User::get();

    

    foreach ($users as $user) {
      $users[] = $user;
    }
     
    return $users;
  }

  public function positionDesc($type){
    // dd($type);
    $result = '';
    if($type == '1') {
      $result = 'Admin';
    } else if ($type == '2') {
      $result = 'Manager';
    } else {
      $result = 'Customer';
    }

    return $result;

  }


  // public function userdesc($type){
  //   $result = "";
  //   foreach ($type as $user) {
  //       // dd($user->usertype);

  //       if($user->usertype == '1'){
  //         $result = "admin";
  //       }
  //   }

  //   return $result;
  // }


    
}
?>