<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Financial Management System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/assets/img/subhead.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-xxlD5vVsmP4jRAujZOlnNGfVpF2n4zmNfqlrHfSYtCGpmV66Z6u90XhUpwz7aK30Mjp9d3EV0yK8gevKc1siZA==" crossorigin="anonymous" /> --}}
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-xxlD5vVsmP4jRAujZOlnNGfVpF2n4zmNfqlrHfSYtCGpmV66Z6u90XhUpwz7aK30Mjp9d3EV0yK8gevKc1siZA==" crossorigin="anonymous" />
  

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">



  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">

   <!-- Scripts -->
   {{-- @vite(['resources/sass/app.scss', 'resources/js/app.js']) --}}
   <meta name="csrf-token" content="{{ csrf_token() }}">

   <!-- jQuery -->
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <!-- DataTables -->
   <script src="https://cdn.datatables.net/2.0.0/js/dataTables.js"></script>

   {{-- <script src="https://cdn.datatables.net/1.11.6/js/jquery.dataTables.min.js"></script> --}}

   

</head>
<body>
            {{-- @csrf --}}
            @include('layouts.modal')
            @yield('content')
            

</body>
</html>


