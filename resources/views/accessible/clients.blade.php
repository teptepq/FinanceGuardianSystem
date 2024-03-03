
@extends('layouts.app')

@section('content')
<!-- ======= Header ======= -->
@include('layouts.appheader')
<!-- End Header -->

<!-- ======= Sidebar ======= -->
@include('layouts.appsidebar');
<!-- End Sidebar-->

<main id="main" class="main">
  @if( auth::user()->usertype == '1')
  <div class="pagetitle">
   
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
    
  </div><!-- End Page Title -->
  @endif

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-12">
        <div class="row">
          @include('layouts.hasAnnouncement')
          <div class="col-lg-12">

            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Tagging Assets</h5>
                <table class="table datatable">
                  <thead>
                      <tr>
                          {{-- <th>Branch</th> --}}
                          <th>Employee Name</th>
                          <th>Department</th>
                          <th>Status</th>
                          <th>Actions</th>
                      </tr>
                  </thead>
                  <tbody>
                      {{-- <tr>
                          <td>Unity Pugh</td>
                          <td>Unity Pugh</td>
                          <td></td>
                          <td>Active</td>
                          <td colspan="2">
                              <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button>
                              <button type="button" class="btn btn-primary"><i class="bi bi-pencil"></i></button>
                              <!-- Add more buttons if needed -->
                          </td>
                      </tr> --}}
                      <!-- Add more rows if needed -->
                  </tbody>
              </table>

              </div>
            </div>



            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Approval</h5>
              
  
                <!-- Table with stripped rows -->
                <table class="table datatable">
                  <thead>
                    <tr>
                      <th>Request No</th>
                      <th>Employee Name</th>
                      <th>Department</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    {{-- <tr>
                      <td>Unity Pugh</td>
                      <td>9958</td>
                      <td>Curicó</td>
                      <td>2005/02/11</td>
                      <td>37%</td>
                    </tr> --}}
                  </tbody>
                </table>
                <!-- End Table with stripped rows -->
  
              </div>
            </div>
  
          </div>

          
        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      {{-- <div class="col-lg-3">
       
        <!-- News & Updates Traffic -->
        @include('layouts.apprightside')
        <!-- End News & Updates -->

      </div><!-- End Right side columns --> --}}

    </div>
  </section>
</main><!-- End #main -->

@include('layouts.appfooter')
@include('layouts.appscript')
@endsection

