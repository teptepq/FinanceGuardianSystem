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
  
      {{-- <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Components</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="components-alerts.html">
              <i class="bi bi-circle"></i><span>Alerts</span>
            </a>
          </li>
          <li>
            <a href="components-accordion.html">
              <i class="bi bi-circle"></i><span>Accordion</span>
            </a>
          </li>
          <li>
            <a href="components-badges.html">
              <i class="bi bi-circle"></i><span>Badges</span>
            </a>
          </li>
          <li>
            <a href="components-breadcrumbs.html">
              <i class="bi bi-circle"></i><span>Breadcrumbs</span>
            </a>
          </li>
          <li>
            <a href="components-buttons.html">
              <i class="bi bi-circle"></i><span>Buttons</span>
            </a>
          </li>
          <li>
            <a href="components-cards.html">
              <i class="bi bi-circle"></i><span>Cards</span>
            </a>
          </li>
          <li>
            <a href="components-carousel.html">
              <i class="bi bi-circle"></i><span>Carousel</span>
            </a>
          </li>
          <li>
            <a href="components-list-group.html">
              <i class="bi bi-circle"></i><span>List group</span>
            </a>
          </li>
          <li>
            <a href="components-modal.html">
              <i class="bi bi-circle"></i><span>Modal</span>
            </a>
          </li>
          <li>
            <a href="components-tabs.html">
              <i class="bi bi-circle"></i><span>Tabs</span>
            </a>
          </li>
          <li>
            <a href="components-pagination.html">
              <i class="bi bi-circle"></i><span>Pagination</span>
            </a>
          </li>
          <li>
            <a href="components-progress.html">
              <i class="bi bi-circle"></i><span>Progress</span>
            </a>
          </li>
          <li>
            <a href="components-spinners.html">
              <i class="bi bi-circle"></i><span>Spinners</span>
            </a>
          </li>
          <li>
            <a href="components-tooltips.html">
              <i class="bi bi-circle"></i><span>Tooltips</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav --> --}}
      @if(Auth::user()->usertype == '1')
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Reports</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="{{ route('statistics') }}">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Statistics Reports</span>
            </a>
          </li>
          {{-- <li>
            <a href="forms-layouts.html">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Form Layouts</span>
            </a>
          </li>
          <li>
            <a href="forms-editors.html">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Form Editors</span>
            </a>
          </li>
          <li>
            <a href="forms-validation.html">
              <i class="bi bi-circle"></i><span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Form Validation</span>
            </a>
          </li> --}}
        </ul>
      </li><!-- End Forms Nav -->
  

      @endif
      {{-- <a class="nav-link collapsed"  href="{{ route('configuration') }}">   --}}
      <li class="nav-heading">Pages</li>
   
      @if(Auth::user()->usertype == '1' || Auth::user()->usertype == '0')
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
      {{-- <li class="nav-item" >
        <a class="nav-link collapsed" href="{{ route('uannouncement') }}">  
          <i class="bi bi-bell-fill"></i>
          <span style="font-size : 13.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Announcement</span>
        </a>
      </li> --}}
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