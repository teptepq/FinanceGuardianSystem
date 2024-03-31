<?php

    $accessibleFilter = new App\Classes\AccessibleFilterClass ;
    $collect = $accessibleFilter->employeedata();

    // dd(Auth::user());
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
  @include('layouts.universalmodal')
  <section class="section profile">
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Statistics of Employee Status</h5>
                    <!-- Pie Chart -->
                    <canvas id="pieChart" style="max-height: 400px;"></canvas>
                    <script>
                        document.addEventListener("DOMContentLoaded", () => {
                            new Chart(document.querySelector('#pieChart'), {
                                type: 'pie',
                                data: {
                                    labels: [
                                        'Inactive',
                                        'Active',
                                        'Pending'
                                    ],
                                    datasets: [{
                                        label: 'Total',
                                        data: [250, 50, 100],
                                        backgroundColor: [
                                            'rgb(255, 99, 132)',
                                            'rgb(54, 162, 235)',
                                            'rgb(255, 205, 86)'
                                        ],
                                        hoverOffset: 4
                                    }]
                                }
                            });
                        });
                    </script>
                    <!-- End Pie Chart -->
                </div>
            </div>
        </div>
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body pt-3">
                    <!-- Table with stripped rows -->
                    <table id="dynamic_employee" class="display" style="width:100%">
                        <thead>
                            <tr>
                                <th>Employee ID</th>
                                <th>Name</th>
                                <th>Job</th>
                                <th>Department</th>
                                <th>Company</th>
                                <th>Status</th>
                                <th>Actions</th>
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


</main><!-- End #main -->
@include('layouts.appfooter')
@include('layouts.appscript')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function(e){

      const table = $('#dynamic_employee').DataTable({
                  scrollX: true,
                  ajax: {
                      url: "{{ route('getEmployees') }}",
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
                    
                      { data: "SalaryID", className: "text-left custom-font-size" },
                      { data: "employeeid",className: "text-left custom-font-size" },
                      { data: "CutoffStartDate",className: "text-center custom-font-size" },
                      { data: "FixedSalary",className: "text-center custom-font-size" },
                      { data: "PagIbigDeduction",className: "text-center custom-font-size" },
                      { data: "SssDeduction",className: "text-left custom-font-size" },
                      // { data: "PhilHealthDeduction",className: "text-center custom-font-size" },
                      {
                          data: null,
                          className: "text-left custom-font-size",
                          render: function(data, type, row) {
                              // return '<button type="button" class="btn btn-info" value="'+data.id+'" id="view"><i class="bi bi-eye"></i></button>&nbsp' +
                              //        '<button type="button" class="btn btn-primary"><i class="bi bi-pencil"></i></button>' ;
                                    //  '<a class="btn btn-danger btn-sm delete">Delete</a>';
                                    return  '<div class="d-flex flex-wrap">' +
                                                '<button type="button" class="btn btn-warning recompute btn-sm mb-1 mr-1" data-id="'+data.id+'"><i class="bi bi-calculator"></i></button>&nbsp;' +
                                                '<button type="button" class="btn btn-info view btn-sm mb-1 mr-1" data-id="'+data.id+'"><i class="bi bi-eye"></i></button>&nbsp;' +
                                                // '<button type="button" class="btn btn-primary edit btn-sm mb-1 mr-1"><i class="bi bi-pencil"></i></button>' +
                                            '</div>';
                          }
                          
                          
                      }
                  ],
                  // Other DataTables configurations...
          });

    });
</script>
@endsection

