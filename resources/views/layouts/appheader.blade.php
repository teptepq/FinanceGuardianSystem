<?php
    
    $accessibleFilter = new App\Classes\AccessibleFilterClass;
    $position = $accessibleFilter->positionDesc(Auth::user()->usertype);
    

?>
<style>

  .appheader-title {

      color : blue !important;
      font-size: 0.9rem;

  }
  .appheader {
    font-size: 0.3rem;
    text-transform: uppercase;
  }
  
</style>
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        @if( auth::user()->usertype == '1')
      <a href="{{ route('home')}}" class="logo d-flex align-items-center">
        @elseif( auth::user()->usertype == '2' )
        <a href="{{ route('uhome')}}"class="logo d-flex align-items-center">
          @else
          <a href="{{ route('chome')}}"class="logo d-flex align-items-center">
            @endif
           
        <img src="/assets/img/subhead.png" alt="">
        <span class="d-none d-lg-block" style="font-size: 19.5px; ">Financial Guardian</span>
      </a>
      
  
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
  
    <div class="search-bar">
      {{-- <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form> --}}
    </div><!-- End Search Bar -->
  
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
  
        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->
  
        <li class="nav-item dropdown">
  
          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->
  
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>
  
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>
  
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>
  
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>
  
            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>
  
          </ul><!-- End Notification Dropdown Items -->
  
        </li><!-- End Notification Nav -->
  
        <li class="nav-item dropdown">
  
          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->
  
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="message-item">
              <a href="#">
                <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 40px; height:40px;"class="rounded-circle" alt="Profile">
                {{-- <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle"> --}}
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="message-item">
              <a href="#">
                <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 40px; height:40px;"class="rounded-circle" alt="Profile">
                {{-- <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle"> --}}
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="message-item">
              <a href="#">
                <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 40px; height:40px;"class="rounded-circle" alt="Profile">
                {{-- <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle"> --}}
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>
  
          </ul><!-- End Messages Dropdown Items -->
  
        </li><!-- End Messages Nav -->
  
        <li class="nav-item dropdown pe-3">
  
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            {{-- <img src="/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> --}}
            
            @if(Auth::user()->usertype == '1'  || Auth::user()->isSuper == '1') 
              <img src="/assets/img/subhead.png" alt="Profile" class="rounded-circle" style="width: 50px; height:50px;">
            @else
              <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 40px; height:40px;"class="rounded-circle" alt="Profile">
            @endif
            <span class="d-none d-md-block dropdown-toggle ps-2">{{ Auth::user()->name }}</span>
          </a><!-- End Profile Iamge Icon -->
  
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              @if(Auth::user()->usertype == '1'  || Auth::user()->isSuper == '1') 
                <img src="/assets/img/subhead.png" alt="Profile" class="rounded-circle" style="width: 50px; height:50px;">
              @else
                <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 100px; height:100px;"class="rounded-circle" alt="Profile">
              @endif
              <h5 class="card-title">{{ Auth::user()->name }}</h5>
              <span class="appheader">{{ $position }}</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
  
            <li>
                    @if(Auth::user()->usertype == '1'  || Auth::user()->isSuper == '1') 
                        <a class="dropdown-item d-flex align-items-center" href="{{ route('profile') }}">
                    @elseif(Auth::user()->usertype == '2')
                        <a class="dropdown-item d-flex align-items-center" href="{{ route('uprofile') }}">
                          @else 
                          <a class="dropdown-item d-flex align-items-center" href="{{ route('cprofile') }}">
                    @endif
                <i class="bi bi-person"></i>
                <span style="font-size: 11.5px;">My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            @if(Auth::user()->usertype == '2' || Auth::user()->usertype == '3')
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-credit-card"></i>
                <span style="font-size: 11.5px;">My Linked Accounts</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-qr-code-scan"></i>
                <span style="font-size: 11.5px;">My Qr Codes</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-piggy-bank"></i>
                <span style="font-size: 11.5px;">Voucher Pocket</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-shop"></i>
                <span style="font-size: 11.5px;">Partner Merchants</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            @endif
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-gear"></i>
                <span style="font-size: 11.5px;">Account Settings</span>
              </a>
            </li>
           
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              @if(Auth::user()->usertype == '1'  || Auth::user()->isSuper == '1')
              <a class="dropdown-item d-flex align-items-center" href="{{ route('cservice') }}">
                @elseif(Auth::user()->usertype == '2')
                <a class="dropdown-item d-flex align-items-center" href="{{ route('uhelp') }}">
              @else 
                <a class="dropdown-item d-flex align-items-center" href="#">
              @endif  
                <i class="bi bi-question-circle"></i>
                <span style="font-size: 11.5px;">Need Help?</span>
              </a>
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>
            
  
            <li>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
              <a class="dropdown-item d-flex align-items-center" href="#"  data-bs-toggle="modal" data-bs-target="#verticalycentered">
                <i class="bi bi-box-arrow-right"></i>
                <span style="font-size: 11.5px;">Sign Out</span>
              </a>
            </li>
  
          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->
  
      </ul>
    </nav><!-- End Icons Navigation -->
  
  </header>