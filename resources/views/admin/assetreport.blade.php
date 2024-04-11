<?php

    $accessibleFilter = new App\Classes\AccessibleFilterClass ;
    $options   = DB::table('fms_g9_assetcategories')->pluck('CategoryName','CategoryID');
    $optmethod = DB::table('fms_g9_depreciationmethods')->pluck('MethodName','MethodID');
    $collect   = $accessibleFilter->employeedata();
    $position  = $accessibleFilter->positionDesc(Auth::user()->usertype);

    $employees = DB::table('_personaldata')
            ->join('fms_g9_users as g9','g9.userid','_personaldata.employeeid')
            ->where('isEmployee','1')
            ->pluck('name','userid');

            // dd($employees);
            

    
    
    
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

<div class="modal fade" id="ModalGenerate" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      {{-- <div class="modal-header">
        <h5 class="modal-title">Basic Modal</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div> --}}
      <div class="modal-body">
        <div class="alert alert-info alert-dismissible fade show" role="alert">
          <h4 class="alert-heading" style="font-size: 1rem;">Note:</h4>
          <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">In the absence of a designated "select for" depriciation method, it is understood that all method will undergo processing.</p>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        {{-- <h5 class="modal-title" style="font-size: 1rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Target Method</h5>   --}}
        <form id="reportmethods">
          @csrf
          <div class="form-floating mb-3 mt-3">
            <select class="form-select" id="reportmethod" name="reportmethod" aria-label="Floating label select example">
                <option value="" selected>- All Depreciation Method -</option>
                @foreach($optmethod as $MethodID => $MethodName)
                <option value='{{ $MethodID }}'>{{ $MethodName }}</option>
                @endforeach
            </select>
            <label for="floatingSelect">Depreciation Method</label>
            <div class="d-grid gap-2 mt-3"id="genmethod">
              <button class="btn btn-danger" type="button">Generate</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>



<!-- Extra Large Modal -->
<div class="modal fade" id="Extralargedep" tabindex="-1">
    <div class="modal-dialog modal-xl">
    <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Extra Large Modal</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-4">
              <form id="dprmethod">
                @csrf
                <div class="form-floating mb-3 mt-3">
                  <select class="form-select" id="targetmethodd" name="targetmethodd" aria-label="Floating label select example">
                      <option value="" selected>- All Employees -</option>
                      @foreach($employees as $employeeID => $employeeName)
                      <option value='{{ $employeeID }}'>{{ $employeeName }}</option>
                      @endforeach
                  </select>
                  <label for="floatingSelect">Employee</label>
                </div>
  
                <div class="">
  
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Add</button>
        </div>
      </div>
    </div>
  </div><!-- End Extra Large Modal-->

  
<main id="main" class="main">
  
   
   <!-- Brief Description of the Module -->
   <div class="alert alert-primary alert-dismissible fade show" role="alert">
    <h4 class="alert-heading" style="font-size: 1rem;">Asset Locations Overview</h4>
    <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">  Serves as a vital component for organizing and managing the physical locations of various assets within an organization. This table provides a comprehensive overview of asset distribution across different sites, offices, warehouses, and other facilities.  </p>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
</br>
  <section class="section">
    <div class="row">
      <div class="col-lg-12">
        {{-- @include('asset.control') --}}


        {{-- <div class="card">
            <div class="card-body">
             
                <br/>
                
               
                
            </div>
        </div> --}}
        <div class="card">
          <div class="card-body">
            {{-- <h5 class="card-title"> </h5> --}}
            <br>
            {{-- <div class="row">
              <div class="col-lg-12" style="text-align: right">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModalForceRecompute">Recompute Asset Depreciation</button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#Extralargedep"><i class="bi bi-plus-circle"></i></button>
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ModalGenerate"><i class="bi bi-filetype-pdf"></i></button>
              </div>
            </div> --}}
            <div class="row">
                    <div class="col-lg-6">
                    
                 
                        <div class="card">
                            <div class="card-body">
                            </div>
                        </div>
    
    
                        
    
                        
                    </div>
                    <div class="col-lg-6">
                       
                        
                        <div class="form-floating mb-3">
                            <select class="form-select" id="amethod" name="amethod" aria-label="Floating label select example">
                                <option value="" selected>- All Postal -</option>
                                @foreach($optmethod as $MethodID => $MethodName)
                                <option value='{{ $MethodID }}'>{{ $MethodName }}</option>
                                @endforeach
                            </select>
                            <label for="floatingSelect">Postal</label>
                        </div>
                    </div>

                  
                
                    


                {{-- <div class="col-lg-4"> --}}
                    
                    {{-- <div class="form-floating mb-3">
                        <select class="form-select" id="selRole" name="selRole" aria-label="Floating label select example">
                            <option value="" selected>- All users -</option>
                            @foreach($options as $usertype => $userdesc)
                            <option value='{{ $usertype }}'>{{ $userdesc }}</option>
                            @endforeach
                        </select>
                        <label for="floatingSelect">User Type</label>
                    </div> --}}


                    

                    
                {{-- </div> --}}
                </div>
         
            {{-- <br> --}}
            {{-- <br> --}}
            <div class="row">
              <div class="col-lg-12" style="text-align: right">
                {{-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModalForceRecompute">Recompute Asset Depreciation</button> --}}
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#Extralargedep"><i class="bi bi-plus-circle"></i></button>
                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ModalGenerate"><i class="bi bi-filetype-pdf"></i></button>
              </div>
            </div>
         
            <br>
            <!-- Table with stripped rows -->
            <table id="dynamic_detail" cellspacing="0" style="width:100%" >
                <thead>
                  <tr>
                    <th class="custom-tr-size ">#</th>
                    <th class="custom-tr-size ">Location Name</th>
                    <th class="custom-tr-size ">Description</th>
                    <th class="custom-tr-size ">Address</th>
                    <th class="custom-tr-size ">City</th>
                    <th class="custom-tr-size ">State</th>
                    <th class="custom-tr-size ">Country</th>
                    <th class="custom-tr-size ">Postal Code</th>
                    
                    {{-- <th>Action</th> --}}
                  </tr>
                </thead>
                <tbody> </tbody>
              </table>
            <!-- End Table with stripped rows -->

          </div>
        </div>

      </div>
    </div>
  </section>
  {{-- @endif --}}
  
  








</main><!-- End #main -->
@include('layouts.appfooter')
@include('layouts.appscript')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script>


$(document).ready(function(e){
     
        
     const assetdetailtable = $('#dynamic_detail').DataTable({
         
               scrollX: true,
               ajax: {
                   url: "{{ route('getassetlocation') }}",
                   dataSrc: "",
                 //   data: function(d) {
                 //       d.amethod = $('#amethod').val();
                 //       d.acat = $('#acat').val(); 
                 //   },
                   error: function(xhr, errorType, exception) {
                       alert('An error occurred while fetching data from the server. Please reload the page and try again.');
                   }
               },
               columns: [
                   { data: "Location_ID", className: "text-left custom-font-size" },
                   { data: "Location_Name", className: "text-left custom-font-size" },
                   { data: "Description",className: "text-left custom-font-size" },
                   { data: "Address", className: "text-left custom-font-size" },
                   { data: "City", className: "text-left custom-font-size" },
                   { data: "State",className: "text-center custom-font-size" },
                   { data: "Country",className: "text-center custom-font-size" },
                   { data: "Postal_Code",className: "text-left custom-font-size" },
                 //   {
                 //       data: null,
                 //       className: "text-left custom-font-size",
                 //       render: function(data, type, row) {
                 //           // return '<button type="button" class="btn btn-info" value="'+data.id+'" id="view"><i class="bi bi-eye"></i></button>&nbsp' +
                 //           //        '<button type="button" class="btn btn-primary"><i class="bi bi-pencil"></i></button>' ;
                 //                 //  '<a class="btn btn-danger btn-sm delete">Delete</a>';
                 //                 return  '<div class="d-flex flex-wrap">' +
                 //                             '<button type="button" class="btn btn-warning recompute btn-sm mb-1 mr-1" data-id="'+data.id+'"><i class="bi bi-calculator"></i></button>&nbsp;' +
                 //                             '<button type="button" class="btn btn-info view btn-sm mb-1 mr-1" data-id="'+data.id+'"><i class="bi bi-pencil"></i></button>&nbsp;' +
                 //                             // '<button type="button" class="btn btn-primary edit btn-sm mb-1 mr-1"><i class="bi bi-pencil"></i></button>' +
                 //                         '</div>';
                 //       }
                       
                 //   }
               ],
         
     });

         


  
    
 });

   

 

    
</script> 
@endsection

