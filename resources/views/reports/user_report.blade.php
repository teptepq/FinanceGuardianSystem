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
    <img src="{{ url('assets/img/subhead.png') }}" alt="Crystal Report">

    {{-- <h2>Crystal Report</h2> --}}
    <h2>Tax Report</h2>
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
                <th class="header">Employee No.</th>
                <th class="header">Employee Name</th>
                <th class="header">Salary</th>
                <th class="header">Department</th>
                <th class="header">Asset</th>
                <th class="header">Tax</th>
            </tr>
            {{--  --}}
        </thead>
        <tbody>
            {{-- @foreach($users as $user)
            <tr>
                <td>{{ $user->employeeid }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->present_address }}</td>
                <td>{{ number_format(0,2) }}</td>
                <td>{{'Laptop'}}</td>
            </tr>
            @endforeach --}}
            <tr>
                <td style="text-align: center">{{ '20240002' }}</td>
                <td>{{ 'John Doe' }}</td>
                <td style="text-align: center">{{ number_format(20000,2) }}</td>
                <td style="text-align: center">{{ 'Mitsui Department' }}</td>
                <td style="text-align: center">{{ 'Laptop' }}</td>
                <td style="text-align: center">-{{ number_format(1437,2) }}</td>
                {{-- <td>{{ }}</td> --}}
            </tr>
        </tbody>
    </table>
</body>
</html>
