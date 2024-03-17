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
    <title>Crystal Report</title>

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
        <h2>Tax Report</h2>
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
                <th class="header">Account No.</th>
                <th class="header">Invoice No</th>
                <th class="header">Customer Name</th>
                <th class="header">Customer Email</th>
                <th class="header">Payment Method</th>
                <th class="header">Total Price</th>
                <th class="header">Status</th>
            </tr>
            {{--  --}}
        </thead>
        <tbody>
            @foreach($revenue as $key =>$data)
            <tr>
                <td style="text-align: center">{{ $data->acc_id }}</td>
                <td>{{ $data->invoice_no }}</td>
                <td style="text-align: center"> {{ $data->customer_name }}</td>
                <td style="text-align: center"> {{ $data->customer_email }}</td>
                <td style="text-align: center">{{ $data->payment_method }}</td>
                <td style="text-align: center">₱{{ number_format($data->total_price,2)}}</td>
                <td style="text-align: center">{{ $data->status}}</td>
          
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
