<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Financial Management System - Secure Financial Guardian Platform</title>
  <meta content="A comprehensive financial management system designed to safeguard and manage your financial assets securely." name="description">
  <meta content="financial guardian system, financial management, asset management, finance, security" name="keywords">



  <link href="{{ URL('assets/img/subhead.png')}}" rel="icon">
  <link href="mainpage/img/apple-touch-icon.png" rel="apple-touch-icon">


  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


  <link href="mainpage/vendor/aos/aos.css" rel="stylesheet">
  <link href="mainpage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="mainpage/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="mainpage/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="mainpage/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="mainpage/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link href="mainpage/css/style.css" rel="stylesheet">

</head>

<body>

  <header id="header" class="fixed-top  header-transparent ">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <a href="#" onclick="reloadPage()"><img src="{{ URL('assets/img/subhead.png')}}"  alt="" class="img-fluid"></a>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#features">App Features</a></li>
          <li class="dropdown"><a><span>Portal</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                @if (Route::has('login'))
                @auth
                @if ( Auth::user()->usertype == '1')
                <li><a class="dropdown-item" href="{{ url('/admin/home') }}">Home</a></li>
                @elseif ( Auth::user()->usertype == '2' )
                <li><a class="dropdown-item" href="{{ url('/manager/home') }}">Home</a></li>
                @elseif ( Auth::user()->usertype == '3' )
                <li><a class="dropdown-item" href="{{ url('/customer/home') }}">Home</a></li>
                @endif
                <li><hr class="dropdown-divider" /></li>
                @else
                <li><a class="dropdown-item" href="{{ route('login') }}">Login</a></li>
                @if (Route::has('register'))
                <li><a class="dropdown-item" href="{{ route('register') }}">Register</a></li>
                @endif
                @endauth
                @endif
            </ul>
          </li>
   
          <li><a class="getstarted scrollto" href="#features">Get Started</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

    </div>
  </header>


  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
          <div>
            <h1>Financial Management</h1>
            <h2 style="font-size: 14.5px">the ultimate solution for streamlined financial control and success. Elevate your organization's financial health with our comprehensive platform designed for efficiency and precision.</h2>
            <a href="https://play.google.com/store/apps?hl=en&gl=PH" class="download-btn"><i class="bx bxl-play-store"></i> Google Play</a>
            <a href="https://www.apple.com/ph/app-store/" class="download-btn"><i class="bx bxl-apple"></i> App Store</a>
          </div>
        </div>
        <div class="col-lg-6 d-lg-flex flex-lg-column align-items-stretch order-1 order-lg-2 hero-img" data-aos="fade-up">
          <img src="mainpage/img/hero-img.png" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </section>

  <main id="main">

    <section id="features" class="features">
      <div class="container">

        <div class="section-title">
          <h2>App Features</h2>
          <p>Expense management becomes a breeze, whether you're an individual or part of a team. Streamline the tracking of expenses, optimize spending, and effortlessly categorize receipts. Sync transactions, payments, and milestones seamlessly with our integrated financial calendar, ensuring you never miss a deadline or an important financial event.</p>
        </div>

        <div class="row no-gutters">
          <div class="col-xl-7 d-flex align-items-stretch order-2 order-lg-1">
            <div class="content d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-md-6 icon-box" data-aos="fade-up">
                  <i class="bx bx-receipt"></i>
                  <h4>Real-time Financial Insights</h4>
                  <p>Gain instant access to accurate and up-to-date financial data, empowering informed decision-making.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                  <i class="bx bx-cube-alt"></i>
                  <h4>Integrated Budgeting</h4>
                  <p>Plan and forecast effectively with seamless budgeting tools for every department and project.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                  <i class="bx bx-images"></i>
                  <h4>Customizable Reporting</h4>
                  <p>Generate tailored financial reports and statements to meet the unique needs of your business and stakeholders.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                  <i class="bx bx-shield"></i>
                  <h4>Expense Mastery</h4>
                  <p>Effortlessly manage expenses, ensuring control over costs and optimizing financial resources.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="400">
                  <i class="bx bx-atom"></i>
                  <h4>Integration Excellence</h4>
                  <p>Seamlessly integrate with other business systems for a holistic view of your organization's operations.</p>
                </div>
                <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="500">
                  <i class="bx bx-id-card"></i>
                  <h4>Compliance Assurance</h4>
                  <p>Stay on top of regulations and compliance effortlessly, supporting both internal and external audits</p>
                </div>
              </div>
            </div>
          </div>
          <div class="image col-xl-5 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
            <img src="mainpage/img/features.svg" class="img-fluid" alt="">
          </div>
        </div>

      </div>
    </section>

  
    <section id="details" class="details">
      <div class="container">

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
            <img src="mainpage/img/details-1.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-4" data-aos="fade-up">
            <h3>Real-time Insights</h3>
            <br>
            <ul>
              <li><i class="bi bi-check"></i> Monitor financial health with live analytics.</li>
              <li><i class="bi bi-check"></i> Track income, expenses, and budgets in real-time.</li>
              
            </ul>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
            <img src="mainpage/img/details-2.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <h3>Financial management app</h3>
            <br>
            <p>
                A comprehensive solution designed to revolutionize the way you handle your finances. With real-time insights, you can monitor your financial health effortlessly, keeping track of income, expenses, and budgets in the blink of an eye. Intelligent budgeting tools empower you to plan and forecast with ease, helping you set and achieve financial goals seamlessly. Customize your financial reporting to present complex data in a visually appealing manner, simplifying the understanding of crucial information.
            </p>
            
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4" data-aos="fade-right">
            <img src="mainpage/img/details-3.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5" data-aos="fade-up">
            <h3>Intelligent Budgeting</h3>
            <br>
            <ul>
              <li><i class="bi bi-check"></i> Plan and forecast with smart budgeting tools.</li>
              <li><i class="bi bi-check"></i> Set and achieve financial goals effortlessly.</li>
    
            </ul>
            <p>
                The app's custom integrations enable seamless connectivity with other business tools, allowing you to tailor integrations to meet your specific needs. 
            </p>
            <p>
                Stay informed with smart notifications, receiving timely alerts and reminders for upcoming payments and important financial milestones.
            </p>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2" data-aos="fade-left">
            <img src="mainpage/img/details-4.png" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <h3>Collaboration and Sharing</h3>
            <p >
                Streamline the tracking of expenses, optimize spending, and effortlessly categorize receipts. 
            </p>
            <p>
                Sync transactions, payments, and milestones seamlessly with our integrated financial calendar, ensuring you never miss a deadline or an important financial event.
            </p>
            <ul>
              <li><i class="bi bi-check"></i> Foster transparency with team collaboration.</li>
              <li><i class="bi bi-check"></i> hare insights and enhance cooperation.</li>
              <li><i class="bi bi-check"></i> Stay informed with timely alerts and reminders.</li>
            </ul>
          </div>
        </div>

      </div>
    </section>

  
  </main>


  <footer id="footer">

    

   
    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <strong> &nbsp;<?= date('Y');?>&nbsp; <span>Financial Guardian System</span></strong>. All Rights Reserved
       
      </div>
    </div>
  </footer>>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


  <script src="mainpage/vendor/aos/aos.js"></script>
  <script src="mainpage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="mainpage/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="mainpage/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="mainpage/vendor/php-email-form/validate.js"></script>

  <script src="mainpage/js/main.js"></script>
  {{-- <script>
   
  </script> --}}

</body>

</html>