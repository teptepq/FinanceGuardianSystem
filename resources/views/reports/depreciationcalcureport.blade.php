<?php

/*   $load = array();$c = 1;
  $accessibleFilter = new App\Classes\AccessibleFilterClass;
  $collection = $accessibleFilter->AssetData(); */

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Depreciation</title>

    <style>
        @page {
            size: landscape; /* Set page orientation to landscape */
        }

        body {
            margin: 0; /* Remove default margin */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
            padding: 8px;
            font-size: 12px;
        }

        tr {
            page-break-inside: avoid; /* Add this property to avoid breaking inside the table row */
        }

        h2 {
            text-align: center;
        }

        th {
            background-color: lightblue; /* Set the background color to light blue */
        }

        img {
            display: block;
            margin: 0 auto; /* Center the image */
            max-width: 100%; /* Make sure the image doesn't exceed its container's width */
            height: auto; /* Maintain the aspect ratio */
        }
    </style>
</head>
<body>
    {{-- @dd(url('assets/img/subhead.png')); --}}
    <div style="display: flex; align-items: center;">
        {{-- <h2>Crystal Report</h2> --}}
        <h2>Asset Depreciation Report</h2>
        {{-- <img src="{{ url('assets/img/subhead.png') }}" alt="Crystal Report" style="width: 100px; height: auto; margin-right: 80px;" > --}}
    </div>  
    <table>
        <thead>
            {{-- <tr>
                <th class="header">Employee No.</th>
                <th class="header">Fullname</th>
                <th class="header">Address</th>
                <th class="header">Salary</th>
                <th class="header">Asset</th>
            </tr> --}}
            {{-- SIDE MANAGE TAX AND CALCULATE  --}}
            <tr>
                {{-- <th class="header">Maintenance ID</th> --}}
                <th class="header">Asset Name</th>
                <th class="header">Acquisition Date</th>
                <th class="header">Initial Cost</th>
                <th class="header">Useful Life In Years</th>
                <th class="header">Salvage Value</th>
                <th class="header">Depreciation Expense</th>
                <th class="header">Category ID</th>
            </tr>
         
        </thead>
        <tbody>
            @foreach($users as $key =>$data)
            <tr>
                {{-- 'Asset_ID'        => $data->Asset_ID,
                    'Asset_Name'      => $data->Asset_Name,
                    'Description'     => $data->Description,
                    'Purchase_Date'   => $data->Purchase_Date,
                    'Purchase_Price'  => $data->Purchase_Price,
                    'Current_Value'   => $data->Current_Value,
                    'Asset_Category'  => $data->Asset_Category,
                    'Asset_Type'      => $data->Asset_Type, --}}
                    
                {{-- {{ dd($data) }} --}}

                @php
                $timestamp = strtotime($data->AcquisitionDate);
                $formattedDate = date("F j, Y", $timestamp);

                @endphp

                <td style="text-align: left">{{ $data->AssetName }}</td>
                <td style="text-align: center">{{ $formattedDate }}</td>
                <td style="text-align: center">{{ $data->InitialCost }}</td>
                <td style="text-align: center">{{ $data->UsefulLifeInYears }}</td>
                <td style="text-align: center">{{ $data->SalvageValue }}</td>
                <td style="text-align: center">{{ $data->DepreciationExpense }}</td>
                <td style="text-align: center"> {{ $data->CategoryID }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
