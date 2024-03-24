<!DOCTYPE html>
<html>
<head>
  
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Financial Management System - Secure Financial Guardian Platform</title>
  <meta content="A comprehensive financial management system designed to safeguard and manage your financial assets securely." name="description">
  <meta content="financial guardian system, financial management, asset management, finance, security" name="keywords">

  <!-- Favicons -->
  <link href="{{ URL::asset('/assets/img/subhead.png')}}" rel="icon">
  <link href="{{ URL::asset('/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-xxlD5vVsmP4jRAujZOlnNGfVpF2n4zmNfqlrHfSYtCGpmV66Z6u90XhUpwz7aK30Mjp9d3EV0yK8gevKc1siZA==" crossorigin="anonymous" /> --}}
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-xxlD5vVsmP4jRAujZOlnNGfVpF2n4zmNfqlrHfSYtCGpmV66Z6u90XhUpwz7aK30Mjp9d3EV0yK8gevKc1siZA==" crossorigin="anonymous" />
  
<!--href="{{ URL::asset('bower_components/font-awesome/css/font-awesome.min.css') }}">-->
  <!-- Vendor CSS Files -->
  <link href="{{ URL::asset('/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/quill/quill.snow.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/quill/quill.bubble.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="{{ URL::asset('/assets/vendor/simple-datatables/style.css')}}" rel="stylesheet">



  <!-- Template Main CSS File -->
  <!--<link href="assets/css/style.css" rel="stylesheet">-->
  	<link rel="stylesheet" href="{{ URL::asset('/assets/css/style.css') }}">

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

            @include('layouts.modal')
            @yield('content')

</body>
</html>


