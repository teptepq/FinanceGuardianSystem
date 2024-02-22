<?php


use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
// use Form;


class test
{
    public function Receipt() {
        $data = DB::table('tbluserdesc')->get();
      return $data;

    }
}
?>