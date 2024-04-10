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

<main id="main" class="main">
  
   
   <!-- Brief Description of the Module -->
   <div class="alert alert-primary alert-dismissible fade show" role="alert">
    <h4 class="alert-heading" style="font-size: 1rem;">Asset Details Overview</h4>
    <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> This data empowers stakeholders to make informed decisions regarding asset valuation, budgeting, and forecasting. Additionally, the table supports proactive maintenance management by recording Maintenance Schedule, Last Maintenance Date, and Next Maintenance Date, ensuring optimal asset performance and longevity. With fields dedicated to Depreciation Method, Salvage Value, and Responsible Person, the table promotes accountability and clarity regarding asset ownership and maintenance responsibilities. </p>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
</br>
  <section class="section">
    <div class="row">
      <div class="col-lg-12">
        @include('asset.control')


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
                    <div class="col-lg-4">
                    
                 
                        <div class="form-floating mb-3">
                            <select class="form-select" id="acat" name="acat" aria-label="Floating label select example">
                                <option value="" selected>- All Asset Categories -</option>
                                @foreach($options as $CategoryID => $CategoryName)
                                <option value='{{ $CategoryID }}'>{{ $CategoryName }}</option>
                                @endforeach
                            </select>
                            <label for="floatingSelect">Asset Categories</label>
                        </div>  
    
    
                        
    
                        
                    </div>
                    <div class="col-lg-4">
                       
                        
                        <div class="form-floating mb-3">
                            <select class="form-select" id="amethod" name="amethod" aria-label="Floating label select example">
                                <option value="" selected>- All Asset Type -</option>
                                @foreach($optmethod as $MethodID => $MethodName)
                                <option value='{{ $MethodID }}'>{{ $MethodName }}</option>
                                @endforeach
                            </select>
                            <label for="floatingSelect">Asset Type</label>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" aria-label="Floating label select example">
                            <label for="floatingSelect">Date From</label>
                        </div>   
                    </div>
                    <div class="col-lg-2">
                        <div class="form-floating mb-3">
                            {{-- <select class="form-select" id="acat" name="acat" aria-label="Floating label select example">
                                <option value="" selected>- All Asset Categories -</option>
                                @foreach($options as $CategoryID => $CategoryName)
                                <option value='{{ $CategoryID }}'>{{ $CategoryName }}</option>
                                @endforeach
                            </select> --}} 
                            <input type="date" class="form-control" aria-label="Floating label select example">
                            <label for="floatingSelect">Date to</label>
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
         
            <br>
            <!-- Table with stripped rows -->
            <table id="dynamic_detail" cellspacing="0" style="width:100%" >
                <thead>
                  <tr>
                    <th class="custom-tr-size ">#</th>
                    <th class="custom-tr-size ">Asset Name</th>
                    <th class="custom-tr-size ">Description</th>
                    <th class="custom-tr-size ">Asset Category</th>
                    <th class="custom-tr-size ">Asset Type</th>
                    <th class="custom-tr-size ">Purchase Date</th>
                    <th class="custom-tr-size ">Purchase Price</th>
                    <th class="custom-tr-size ">Current Value</th>
                    
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
                   url: "{{ route('getassetdetail') }}",
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
                   { data: "Asset_ID", className: "text-left custom-font-size" },
                   { data: "Asset_Name", className: "text-left custom-font-size" },
                   { data: "Description",className: "text-left custom-font-size" },
                   { data: "Asset_Category", className: "text-left custom-font-size" },
                   { data: "Asset_Type", className: "text-left custom-font-size" },
                   { data: "Purchase_Date",className: "text-center custom-font-size" },
                   { data: "Purchase_Price",className: "text-center custom-font-size" },
                   { data: "Current_Value",className: "text-left custom-font-size" },
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

