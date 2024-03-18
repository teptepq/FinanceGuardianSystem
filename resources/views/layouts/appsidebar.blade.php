<?php
  $load = array();$c = 1;
  $accessibleFilter = new App\Classes\AccessibleFilterClass;
  $collection = $accessibleFilter->sched();

  // dd($collection);
?>
<div class="modal fade" id="ExtralargeModalInventory" tabindex="-1">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      
      <div class="modal-body">
        
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Inventory Asset</h5>
            <table class="table datatable">
              <thead>
                  <tr>
                      {{-- <th>Branch</th> --}}
                      <th>id</th>
                      <th>Stock</th>
                      <th>Quantities</th>
                      <th>Location</th>
                      <th>Status</th>
                      <th>Action</th>
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




      </div>
     
    </div>
  </div>
</div>

<div class="modal fade" id="ExtralargeModalAsset" tabindex="-1">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      
      <div class="modal-body">
        
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Tracks maintenance schedules</h5>
            <table class="table datatable">
              <thead>
                  <tr>
                      {{-- <th>Branch</th> --}}
                      <th>no</th>
                      <th>Asset</th>
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
            <h5 class="card-title">Asset Disposal</h5>
            <table class="table datatable">
              <thead>
                  <tr>
                      {{-- <th>Branch</th> --}}
                      <th>Sell</th>
                      <th>Donate</th>
                      <th>Disposing</th>
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




      </div>
     
    </div>
  </div>
</div>

<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      
      <li class="nav-item">
        @if( auth::user()->usertype == '1')
        <a class="nav-link " href="{{route('home')}}">
          <i class="bi bi-grid"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Dashboard</span>
        </a>
        @elseif( auth::user()->usertype == '2' )
        <a class="nav-link " href="{{route('uhome')}}">
          <i class="bi bi-house"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Home</span>
        </a>
        @elseif( auth::user()->usertype == '3')
        <a class="nav-link " href="{{route('chome')}}">
          <i class="bi bi-house"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Home</span>
        </a>
        @else
        <a class="nav-link " href="{{route('shome')}}">
          <i class="bi bi-house"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Home</span>
        </a>
        @endif
      </li><!-- End Dashboard Nav -->
  
     
     
  
      <li class="nav-heading">Pages</li>


      @if(Auth::user()->usertype == '1')
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-people-fill"></i>
          <span style="font-size: 0.8rem;">User Management</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('taxrate') }}">
          <i class="bi bi-bar-chart-fill"></i>
          <span style="font-size: 0.8rem;">Tax Rate Management</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          
          <i class="bi bi-tag-fill"></i>
          <span style="font-size: 0.8rem;">Asset Tracking</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-gear-fill"></i>
          <span style="font-size: 0.8rem;">Maintenance Scheduling</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-calendar2-minus-fill"></i>
          <span style="font-size: 0.8rem;">Depreciation Calculation</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-diagram-3-fill"></i>
          <span style="font-size: 0.8rem;">Tax Calculation</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-book-half"></i>
          <span style="font-size: 0.8rem;">Reporting and Analytics</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-arrows"></i>
          <span style="font-size: 0.8rem;">Integration Module</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('user-management') }}">
          <i class="bi bi-archive-fill"></i>
          <span style="font-size: 0.8rem;">Audit Trail</span>
        </a>
      </li>
      @endif
   
      @if(Auth::user()->usertype == '0')
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-tools" data-bs-toggle="collapse" href="#">
          <i class="bi bi-gear"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Services</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-tools" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Configuration</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Announcement</span>
            </a>
          </li>
          <li>
            <a href="#" data-bs-toggle="modal" data-bs-target="#ExtralargeModalUsers">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">User Accounts</span>
            </a>
          </li>
          <li>
            {{-- <a href="forms-validation.html">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Form Validation</span>
            </a> --}}
          </li>
        </ul>
      </li><!-- End Forms Nav -->
      <!-- End Profile Page Nav -->
      @elseif( Auth::user()->usertype == '2' )

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#ExtralargeModalAsset" >  
          <i class="bi bi-tv"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Asset Maintenance</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('utrackmaintenance') }}">  
          <i class="bi bi-graph-up"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Tracking and Maintenance</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('utaxCal') }}">  
          <i class="bi bi-calculator-fill"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Tax Calculation and Fixed Asset</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('uclient') }}">  
          <i class="bi bi-people-fill"></i>
        <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Employee Asset</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#"  data-bs-toggle="modal" data-bs-target="#ExtralargeModalInventory"  >  
          <i class="bi bi-database"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Inventory Management</span>
        </a>
      </li>
     
      <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-gear" ></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Services</span><i class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        {{-- <li>
          <a href="{{ route('uannouncement') }}">
            <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Announcement</span>
          </a>
        </li> --}}
        <li>
          <a href="#">
            <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Reports</span>
          </a>
        </li>
      </ul>
    </li><!-- End Tables Nav -->
    <hr>
    <br>
    {{-- <div class="card">
      <div class="card-body"> --}}
        <h5 class="card-title"></h5>
        <!-- Slides only carousel -->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="/assets/img/loogo.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <a href="https://www.paymongo.com/">
                <img src="/assets/img/paymongo.jpg" class="d-block w-100" alt="...">
              </a>
             
            </div>
            <div class="carousel-item">
              <a href="https://www.sss.gov.ph/">
                <img src="/assets/img/partner-1.jpg" class="d-block w-100" alt="...">
              </a>
            </div>
            <div class="carousel-item">
              <a href="https://www.pagibigfundservices.com/virtualpagibig/">
                <img src="/assets/img/partner-2.jpg" class="d-block w-100" alt="...">
              </a>
             
            </div>
            <div class="carousel-item">
              <a href="https://www.gcash.com/">
                 <img src="/assets/img/partner-3.png" class="d-block w-100" alt="...">
              </a>
             
            </div>
          </div>
        </div><!-- End Slides only carousel-->
  
      {{-- </div>
    </div> --}}
      @elseif ( Auth::user()->usertype == '3' )
      <li class="nav-item" style="cursor: pointer;">
        <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#ExtralargeModalPayment">  
          <i class="bi bi-credit-card-2-back"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Payment</span>
        </a>
      </li>
      <li class="nav-item" style="cursor: pointer;">
        <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#ExtralargeModalPayment">  
          <i class="bi bi-paypal"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Purchase</span>
        </a>
      </li>
      <li class="nav-item" style="cursor: pointer;">
        <a class="nav-link collapsed" data-bs-toggle="modal" data-bs-target="#ExtralargeModalTransact">  
          <i class="bi bi-clock-history"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Transactions</span>
        </a>
      </li>
      
      @endif
    </ul>
  
  </aside><!-- End Sidebar-->