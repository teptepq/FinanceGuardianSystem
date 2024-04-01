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
  
  {{-- @if( auth::user()->usertype == '1')
  <div class="pagetitle">
   
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
    
  </div><!-- End Page Title -->
  @endif --}}
  {{-- @include('layouts.universalmodal') --}}

  {{-- @if(Auth::user()->usertype == '3') --}}
   <!-- Brief Description of the Module -->
   <div class="alert alert-primary alert-dismissible fade show" role="alert">
    <h4 class="alert-heading" style="font-size: 1rem;">Depreciation Calculation Overview</h4>
    <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">This module force-Allow to recompute relevant data such as acquisition date, initial cost, useful life, and salvage value. The module can calculates depreciation expenses based on the chosen method, presenting results clearly. It also provides functionality to efficiently view and manage assets, including editing or deleting entries. This module enhances decision-making processes by offering accurate depreciation insights, contributing to better financial planning and asset optimization strategies.</p>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
   
  </div>
  <br/>
  <section class="section">
    <div class="row">
      <div class="col-lg-12">


        <div class="card">
            <div class="card-body">
             
                <br/>
                
                <div class="row">
                <div class="col-lg-6">
                    
                 
                        <div class="form-floating mb-3">
                            <select class="form-select" id="amethod" name="amethod" aria-label="Floating label select example">
                                <option value="" selected>- All Depreciation Method -</option>
                                @foreach($optmethod as $MethodID => $MethodName)
                                <option value='{{ $MethodID }}'>{{ $MethodName }}</option>
                                @endforeach
                            </select>
                            <label for="floatingSelect">Depreciation Method</label>
                        </div>
    
    
                        
    
                        
                    </div>
                    <div class="col-lg-6">
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
                    
                    {{-- <div class="form-floating mb-3">
                        <select class="form-select" id="selRole" name="selRole" aria-label="Floating label select example">
                            <option value="" selected>- All users -</option>
                            @foreach($options as $usertype => $userdesc)
                            <option value='{{ $usertype }}'>{{ $userdesc }}</option>
                            @endforeach
                        </select>
                        <label for="floatingSelect">User Type</label>
                    </div> --}}


                    

                    
                </div>
                </div>
                
            </div>
        </div>
        <div class="card">
          <div class="card-body">
            <h5 class="card-title"> </h5>


            
            <!-- Table with stripped rows -->
            <table id="dynamic_Datable"  cellspacing="0" style="width:100%">
              <thead >
                <tr>
                  {{-- <th>AssetID</th> --}}
                  <th class="custom-tr-size ">AssetName</th>
                  <th class="custom-tr-size ">AcquisitionDate</th>
                  <th class="custom-tr-size ">InitialCost</th>
                  <th class="custom-tr-size ">UsefulLifeInYears</th>
                  <th class="custom-tr-size ">SalvageValue</th>
                  <th class="custom-tr-size ">Depreciation Method</th>
                  <th class="custom-tr-size ">Depreciation Expense</th>
                  <th class="custom-tr-size center ">Actions</th>
                </tr>
              </thead>
              <tbody></tbody>
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

        var userid = "<?=Auth::user()->usertype?>";

          var url = ''
          var urlsub = ''

        if( userid == '1' ){
          url =  "{{ route('getdepreciation') }}";
          urlsub =   "{{ route('recompute') }}";
        } else {
          url =  "{{ route('mgetdepreciation') }}";
          urlsub =   "{{ route('mrecompute') }}";
        }


        $('#amethod,#acat').on('change', function(e){
            e.preventDefault();
           table.ajax.reload();
        });



          const table = $('#dynamic_Datable').DataTable({
                  scrollX: true,
                  ajax: {
                      url: url,
                      dataSrc: "",
                      data: function(d) {
                          // Send additional data if needed
                          d.amethod = $('#amethod').val();
                          d.acat = $('#acat').val(); // Get the roleSelector value from an input field
                      },
                      error: function(xhr, errorType, exception) {
                          console.error(xhr);
                          console.error(errorType);
                          console.error(exception);
                          alert('An error occurred while fetching data from the server. Please reload the page and try again.');
                      }
                  },
                  columns: [
                    
                      { data: "aname", className: "text-left custom-font-size" },
                      { data: "adata",className: "text-left custom-font-size" },
                      { data: "icost",className: "text-left custom-font-size" },
                      { data: "uyears",className: "text-center custom-font-size" },
                      { data: "svalue",className: "text-left custom-font-size" },
                      { data: "dmethod",className: "text-left custom-font-size" },
                      { data: "dExpenses",className: "text-left custom-font-size" },
                      {
                          data: null,
                          className: "text-left custom-font-size",
                          render: function(data, type, row) {
                              // return '<button type="button" class="btn btn-info" value="'+data.id+'" id="view"><i class="bi bi-eye"></i></button>&nbsp' +
                              //        '<button type="button" class="btn btn-primary"><i class="bi bi-pencil"></i></button>' ;
                                    //  '<a class="btn btn-danger btn-sm delete">Delete</a>';
                                    return  '<div class="d-flex flex-wrap">' +
                                                '<button type="button" class="btn btn-warning recompute btn-sm mb-1 mr-1" data-id="'+data.id+'"><i class="bi bi-calculator"></i></button>&nbsp;' +
                                                '<button type="button" class="btn btn-info view btn-sm mb-1 mr-1" data-id="'+data.id+'" disabled><i class="bi bi-eye"></i></button>&nbsp;' +
                                                // '<button type="button" class="btn btn-primary edit btn-sm mb-1 mr-1"><i class="bi bi-pencil"></i></button>' +
                                            '</div>';
                          }
                          
                          
                      }
                  ],
                  // Other DataTables configurations...
        });

          // Event delegation for view button
        $('#dynamic_Datable').on('click', '.view', function() {
            var id = $(this).data('id');
            alert('View button clicked for ID: ' + id);
        });

        $('#dynamic_Datable').on('click', '.recompute', function() {
            var id = $(this).data('id');  

            // Prompt the user with a confirmation dialog
            if (confirm('Are you sure you want to recompute the depreciation expense?')) {
                $.ajax({
                    url: urlsub,
                    type: "POST",
                    data: {
                        _token: '{{ csrf_token() }}',
                        id: id
                    },
                    success: function(data) {
                        // Handle success response
                        if(data.success === true) {
                          const Toast = Swal.mixin({
                              toast: true,
                              position: 'top-end',
                              showConfirmButton: false,
                              timer: 4000,
                              background: '#59b259',
                              color: '#ffff',
                              timerProgressBar: true,
                              didOpen: (toast) => {
                                   toast.addEventListener('mouseenter', Swal.resumeTimer)
                                   toast.addEventListener('mouseleave', Swal.resumeTimer)
                              }
                              })
                              Toast.fire({
                                    icon: 'success',
                                    title: data.message
                              })


                         table.ajax.reload();
                        } else {
                          const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 4000,
                            background: '#f64341',
                            color: '#ffff',
                            timerProgressBar: true,
                            didOpen: (toast) => {
                                toast.addEventListener('mouseenter', Swal.resumeTimer)
                                toast.addEventListener('mouseleave', Swal.resumeTimer)
                            }
                            })
                            Toast.fire({
                                icon: 'error',
                                title: data.message
                            })

                            return;
                        }
                    },
                    error: function(xhr, status, error) {
                        // Handle error response

                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 4000,
                            background: '#f64341',
                            color: '#ffff',
                            timerProgressBar: true,
                            didOpen: (toast) => {
                                toast.addEventListener('mouseenter', Swal.resumeTimer)
                                toast.addEventListener('mouseleave', Swal.resumeTimer)
                            }
                            })
                            Toast.fire({
                                icon: 'error',
                                title: error.error
                            })

                            return;
                    }
                });
            }
        });
        
         
        

         



    });
</script>
@endsection

