<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use DataTables;

class EmployeeController extends Controller
{
    public function index()
    {
       

            // dd($employees);

            try {

                $employees = DB::table('fms_g9_tblempsalary')
                ->select('SalaryID', 'employeeid', 'CutoffStartDate', 'FixedSalary', 'PagIbigDeduction', 'SssDeduction', 'PhilHealthDeduction')
                ->get();
    
        
             
                $formattedPromotions = [];
                foreach ($employees as $data) {
              
    
    
                    $formattedPromotions[] = [
                        'SalaryID'    => $data->SalaryID,
                        'employeeid' => $data->employeeid,
                        'CutoffStartDate' =>  $data->CutoffStartDate,
                        'FixedSalary' => '₱'.$data->FixedSalary,
                        'PagIbigDeduction' => $data->PagIbigDeduction,
                        'SssDeduction' => '₱'.$data->SssDeduction,
                        'PhilHealthDeduction' => $data->PhilHealthDeduction,
                    ];

                    
                    
                }
                // dd($formattedPromotions);
                return response()->json($formattedPromotions);
    
            } catch (\Exception $e) {
    
                return response()->json(['error' => 'An error occurred while processing the request.'], 500);
    
            }

        
    }
}
