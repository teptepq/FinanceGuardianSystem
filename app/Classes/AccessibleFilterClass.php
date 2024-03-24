<?php

namespace App\Classes;


use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Form;


class AccessibleFilterClass
{



  public function sched()
  {
    try {
      $data = array();

      $data = DB::table('lgu_g68_shopinfo')
        ->get();

      return $data;

    } catch (\Exception $e) {
      return $e;
    }
  }
  public function AssetData() {
    try {
        

      $data = array();

      $data = DB::table('fms_g9_tblPersonaldata as p')
        ->select(DB::raw("CONCAT(p.lname, ', ', p.fname, ' ', p.mname) as fullname"), 'p.employeeid','salary', 'deptid')
        ->leftJoin('fms_g9_tblPaymentTrail as t', 't.employee_id', '=', 'p.employeeid')
        ->leftJoin('fms_g9_tblEmployeeSalary as s', 's.employee_id', '=', 'p.employeeid')
        ->where('p.isEmployee', '1')
        ->distinct()
        ->get();
     
    
      
      return $data;

    } catch (\Exception $e) {
      return $e;
    }
  } 
  public function employeedata(){
    try {

      $data = DB::table('fms_g9_tblPersonaldata')
          ->where('isEmployee','1')
          ->count();
          // dd($data);
      return $data;
      
    } catch (\Exception $e) {
      return $e;
    }

  }


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
    
    $users = DB::table('fms_g9_users')
    ->select('NAME','email','descid')
    ->leftjoin('fms_g9_tbluserdesc','fms_g9_tbluserdesc.cid','=','fms_g9_users.usertype')
    ->distinct()
    ->get();
    // ->distinct();
    // $users = User::SELECT(NAME,email,descid)
    //       ->LEFT JOIN(tbluserdesc);

//     SELECT DISTINCT NAME,email,descid FROM users  
// LEFT JOIN tbluserdesc ON
// 	tbluserdesc.cid = users.usertype
// dd($users);
    foreach ($users as $user) {
      $users[] = $user;
      // dd($users[]);
    }
     
    return $users;
  }

  public function positionDesc($type){
  
    $result = "";
    $sql = DB::table('fms_g9_tbluserdescrip')
        ->select('userdesc')
        ->where('usertype',$type)
        ->first();

    if($sql){
      $result = $sql->userdesc;
    }    
    return $result;

  }






    
}
?>