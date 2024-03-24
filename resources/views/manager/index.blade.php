<?php

    $accessibleFilter = new App\Classes\AccessibleFilterClass ;
    $collect = $accessibleFilter->employeedata();
    $position = $accessibleFilter->positionDesc(Auth::user()->usertype);
    


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

  @if(Auth::user()->usertype == '3')
  <section class="section profile">
    <div class="row">
      <div class="col-xl-4">

        <div class="card">
          <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

            <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"   class="rounded-circle" alt="Profile">
            <h2>{{Auth::user()->name}}</h2>
            <h3>{{ $position }}</h3>
            <div class="social-links mt-2">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>

      </div>

      <div class="col-xl-8">

        <div class="card">
          <div class="card-body pt-3">
             {{-- @include('layouts.universalmodal') --}}
            @include('layouts.hasAnnouncement')
              
  
          </div>
        </div>

      </div>
    </div>
  </section>

  
  @else
  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-9">
        <div class="row">
          {{-- @include('layouts.hasAnnouncement') --}}
          @if(Auth::user()->usertype == '10')
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title"></h5>
                {{-- <p>This is an examle page with no contrnt. You can use it as a starter for your custom pages.</p> --}}
                <table class="table table-bordered" style="font-size: 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">
                  <thead>
                <tr>
                  {{-- <th scope="col"></th> --}}
                  <th colspan="5" style="text-align: center; "><strong><h5>Account Details</h5></th></strong>
                  <th colspan="2" style="text-align: center;"><strong><h5>Your Information</h5></th></strong>
                </tr>
              </thead>
              <tbody>
                <tr>
                  {{-- <th scope="row">1</th> --}}
                  <td colspan="5">
                    <span>
                      App Key<br>3021939120390921830989
                    </span>
                  </td>
                  <td colspan="2">
                    <span>
                    Account No.<br>240128200075
                    </span>
                  </td>
                  {{-- <td>@mdo</td> --}}
                </tr>
                <tr>
                  <td colspan="1">
                    <span>
                      Credits<br>0.00
                      </span>
                    
                  </td>
                  <td colspan="1">
                    <span>
                      Usaged<br>0.00
                      </span>
                  </td>
                  <td colspan="3">
                    <span>
                      Available<br>0.00
                      </span>
                  </td>
                  <td>
                    <span colspan="2">
                      Fullname<br>{{Auth::user()->name}}
                      </span>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <span>
                      Live Transaction<br>0.00
                      </span>
                    
                  </td>
                  {{-- <td colspan="1">
                    <span>
                      Usaged<br>0.00
                      </span>
                  </td> --}}
                  <td colspan="3">
                    <span>
                      Test Transaction<br>0.00
                      </span>
                  </td>
                  <td>
                    <span colspan="2">
                      Mobile<br>+633512413920
                      </span>
                  </td>
                </tr>
                <tr>
                  <td colspan="5">
                    <div class="d-grid gap-2 mt-3">
                      <button class="btn btn-secondary" type="button" data-bs-toggle="modal" data-bs-target="#BuylargeModal"><i class="bi bi-credit-card"></i>&nbsp;Buy Credits</button>
                    </div>
                  </td>
                  <td colspan="2">
                    <div class="d-grid gap-2 mt-3">
                      <button class="btn btn-danger" type="button"><i class="bi bi-pencil"></i>&nbsp;Edit Profile</button>
                    </div>
                  </td>
                </tr>
              </tbody>
            
              </table>
              </div>
            </div>
          </div>
          @endif
         
          @if(Auth::user()->usertype == '1')
           <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">Casual</a></li>
                    <li><a class="dropdown-item" href="#">Employee</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->
          @endif


        
        </div>
      </div><!-- End Left side columns -->

      <!-- Right side columns -->
      <div class="col-lg-3">


        {{-- @if(Auth::user()->usertype == '1')
        <!-- Recent Activity -->
        <div class="card">
          <div class="filter">
            <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
              <li class="dropdown-header text-start">
                <h6>Filter</h6>
              </li>

              <li><a class="dropdown-item" href="#">Today</a></li>
              <li><a class="dropdown-item" href="#">This Month</a></li>
              <li><a class="dropdown-item" href="#">This Year</a></li>
            </ul>
          </div>

          <div class="card-body">
            <h5 class="card-title">Recent Activity <span>| Today</span></h5>

            <div class="activity">

              <div class="activity-item d-flex">
                <div class="activite-label">32 min</div>
                <i class='bi bi-circle-fill activity-badge text-success align-self-start'></i>
                <div class="activity-content">
                  Quia quae rerum <a href="#" class="fw-bold text-dark">explicabo officiis</a> beatae
                </div>
              </div><!-- End activity item-->

              <div class="activity-item d-flex">
                <div class="activite-label">56 min</div>
                <i class='bi bi-circle-fill activity-badge text-danger align-self-start'></i>
                <div class="activity-content">
                  Voluptatem blanditiis blanditiis eveniet
                </div>
              </div><!-- End activity item-->

              <div class="activity-item d-flex">
                <div class="activite-label">2 hrs</div>
                <i class='bi bi-circle-fill activity-badge text-primary align-self-start'></i>
                <div class="activity-content">
                  Voluptates corrupti molestias voluptatem
                </div>
              </div><!-- End activity item-->

              <div class="activity-item d-flex">
                <div class="activite-label">1 day</div>
                <i class='bi bi-circle-fill activity-badge text-info align-self-start'></i>
                <div class="activity-content">
                  Tempore autem saepe <a href="#" class="fw-bold text-dark">occaecati voluptatem</a> tempore
                </div>
              </div><!-- End activity item-->

              <div class="activity-item d-flex">
                <div class="activite-label">2 days</div>
                <i class='bi bi-circle-fill activity-badge text-warning align-self-start'></i>
                <div class="activity-content">
                  Est sit eum reiciendis exercitationem
                </div>
              </div><!-- End activity item-->

              <div class="activity-item d-flex">
                <div class="activite-label">4 weeks</div>
                <i class='bi bi-circle-fill activity-badge text-muted align-self-start'></i>
                <div class="activity-content">
                  Dicta dolorem harum nulla eius. Ut quidem quidem sit quas
                </div>
              </div><!-- End activity item-->

            </div>

          </div>
        </div><!-- End Recent Activity -->
        @endif --}}

       

       
        <!-- News & Updates Traffic -->
        @include('layouts.apprightside')
        <!-- End News & Updates -->


      </div><!-- End Right side columns -->

    </div>
  </section>
  @endif








</main><!-- End #main -->
@include('layouts.appfooter')
@include('layouts.appscript')
@endsection

