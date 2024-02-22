<!-- resources/views/reports/user_report.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>User Report</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
            padding: 8px;
        }
    </style>
</head>
<body>
    <h2>User Report</h2>
    <table>
        <thead>
            <tr>
                <th>Full Name</th>
                <th>Address</th>
                <th>Salary</th>
                <th>Employee Number</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
            <tr>
                <td>{{ $user->full_name }}</td>
                <td>{{ $user->address }}</td>
                <td>{{ $user->salary }}</td>
                <td>{{ $user->employee_number }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
