<?php

namespace App\Classes;


use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Form;


class AccessibleFilterClass
{
    public function Receipt() {

      $user = Auth::user()->usertype;

        $data = DB::table('tbluserdesc')
              ->select('cid','descid')
              ->distinct();
              
              if($user == '2'){
                $data = $data->WHERE('cid', '!=','0');
              }
           
           $data = $data  ->distinct()
             ->orderBy('cid')
             ->get();
        $result = array(); $result[''] = "- Select Recepient -";
        foreach ($data as $key => $value){
      
            $result[$value->cid] = $value->descid;
        }
      return $result;
    }

    // public function 
    
}
?>