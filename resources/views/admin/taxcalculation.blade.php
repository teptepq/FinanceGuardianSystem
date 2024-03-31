<?php

    $accessibleFilter = new App\Classes\AccessibleFilterClass ;
    $options   = DB::table('fms_g9_assetcategories')->pluck('CategoryName','CategoryID');
    $optmethod = DB::table('fms_g9_depreciationmethods')->pluck('MethodName','MethodID');
    $collect   = $accessibleFilter->employeedata();
    $position  = $accessibleFilter->positionDesc(Auth::user()->usertype);
    
    
    
    // dd(Auth::user()->usertype);

?>
@extends('layouts.app')

@section('content')
<!-- ======= Header ======= -->
@include('layouts.appheader')
<!-- End Header -->

<!-- ======= Sidebar ======= -->
@include('layouts.appsidebar');
<!-- End Sidebar-->
<style>
  /* Add your other styles here */
.custom-toast-popup {
    width: 500px; /* Adjust the width as needed */
}

.icon-color-black {
    color: black !important; /* Change the color of the icon */
}
.custom-toast-content {
 /* Adjust the maximum width of the content area */
  /* Hide overflow to prevent it from expanding beyond the width */
 
    font-size: 12.5px;/* Add padding to the content */
    max-width: 100%;
    overflow: hidden;
}
.custom-font-size {
    font-size: 12px; /* Adjust the font size as needed */
}
.custom-tr-size {
  font-size: .70rem;
  text-transform: capitalize !important;
}

.center {
  font-size: .70rem;
  text-align: center;
  text-transform: capitalize !important;
}

</style>


<main id="main" class="main">
  

  
  








</main><!-- End #main -->
@include('layouts.appfooter')
@include('layouts.appscript')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>

@endsection

