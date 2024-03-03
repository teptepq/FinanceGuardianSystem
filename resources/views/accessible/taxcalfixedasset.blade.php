<?php
  $load = array();$c = 1;

  $accessibleFilter = new App\Classes\AccessibleFilterClass;

  $collection = $accessibleFilter->AssetData();
?>
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
      <div class="col-lg-9">
        <div class="row">
          @include('layouts.hasAnnouncement')
          
          <section class="section">
            <div class="row">
              <div class="col-lg-12">
      
                <div class="card">
                  <div class="card-body">
                    {{-- <h5 class="card-title">Example Card</h5>
                    <p>This is an examle page with no contrnt. You can use it as a starter for your custom pages.</p> --}}
                    <h5 class="card-title">Employee Asset & Tax</h5>
                    <table class="table datatable" style="font-size: 12.5px;">
                      <thead>
                        <tr>
                          <th>Employee Name</th>
                          <th>Salary</th>
                          <th>Department</th>
                          <th>Asset</th>
                          <th>Tax</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                     
                      <tbody>
                        @foreach($collection as $key =>$data)
                          {{-- $load = $data; --}}
                        <tr>
                          <td>{{ $data->fullname }}</td>
                            <td>
                              {{ ($data->salary) ? number_format($data->salary,2) : number_format('0',2)  }}
                            </td>
                            <td>
                              {{ ($data->deptid) ?: 'N/A' }}
                            </td>
                            <td>
                              {{ 'LAPTOP' }}
                            </td>
                            {{-- fixed 30% --}}
                            <td>
                              -{{ ($data->salary) ? number_format(($data->salary-1437),2) : number_format((1437),2) }}
                            </td>
                            <td>
                              <a type="button" class="btn btn-info" href={{route('ugenerateReport')}}><i class="bi bi-printer"></i></i></a>
                            </td>
                            {{-- <td>
                              <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button>
                            </td> --}}
                          </tr>
                          @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
      
              </div>

              
      
              {{-- <div class="col-lg-6">
      
                <div class="card">
                  <div class="card-body">
                    <h5 class="card-title">Example Card</h5>
                    <p>This is an examle page with no contrnt. You can use it as a starter for your custom pages.</p>
                  </div>
                </div>
      
              </div> --}}
            </div>
          </section>
          

        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      <div class="col-lg-3">
        <!-- News & Updates Traffic -->
        @include('layouts.apprightside')
        <!-- End News & Updates -->
      </div><!-- End Right side columns -->
    </div>
  </section>
</main><!-- End #main -->

@include('layouts.appfooter')
@include('layouts.appscript')
@endsection

