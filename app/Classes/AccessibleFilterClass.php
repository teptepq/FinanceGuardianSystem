<?php

namespace App\Classes;


use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Form;


class AccessibleFilterClass
{
  
  public function Receipt() {
    try {
        $user = Auth::user()->usertype;

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
        $result[''] = "- Select Recipient -";

        foreach ($data as $key => $value) {
            $result[$value->cid] = $value->descid;
        }

        return $result;

    } catch (\Exception $e) {
        // Handle exception here, you can log it or re-throw if necessary
        return ['error' => $e->getMessage()];
    }
  }


    
}
?>