<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use PDF;
use Dompdf\Dompdf;
use Dompdf\Options;

class ReportAccessController extends Controller
{
    //
    public function generateReport()
    {
      $users = DB::table('fms_g9_users')
      ->leftjoin('fms_g9_tblPersonaldata','fms_g9_tblPersonaldata.employeeid','fms_g9_users.userid')
      ->get(); 

      // Setup the Dompdf class
      $options = new Options();
      $options->set('isHtml5ParserEnabled', true);
      $options->set('isRemoteEnabled', true);
      $dompdf = new Dompdf($options);
      // dd(compact('users'));
      // Load HTML content
      $html = view('reports.user_report', compact('users'))->render();
      $dompdf->loadHtml($html);

      // Render the PDF
      $dompdf->render();

      // Output the generated PDF
      return $dompdf->stream('user_report.pdf');
    }
}
