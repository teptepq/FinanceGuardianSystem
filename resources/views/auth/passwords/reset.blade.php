@extends('layouts.app')
@section('content')
<main>
  <div class="container">

    <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

            <div class="d-flex justify-content-center py-4">
              <a href="{{route('password.reset','')}}" class="logo d-flex align-items-center w-auto">
                <img src="/assets/img/subhead.png" alt="">
                {{-- <span class="d-none d-lg-block">NiceAdmin</span> --}}
              </a>
            </div><!-- End Logo -->

            <div class="card mb-3">

              <div class="card-body">
                
                <div class="pt-3 pb-2">
                  <label class="card-title text-left" style="font-size: 19.5px;">{{ __('Reset Password') }}</label>
                  {{-- <p class="text-left large" style="font-size: 13.2px;"></p> --}}
                </div>

                {{-- <form class="row g-3 needs-validation" novalidate> --}}
                  <form method="POST" action="{{ route('password.update') }}" class="row g-3 needs-validation" novalidate>
                    @csrf

                    <input type="hidden" name="token" value="{{ $token }}">
                  <div class="col-12">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert" style="font-size: 11px;">
                            {{ session('status') }}
                        </div>
                    @endif
                    <label for="yourUsername" class="form-label" style="font-size: 14.5px;">Email</label>
                    <div class="input-group has-validation">
                      <span class="input-group-text" id="inputGroupPrepend">@</span>
                      <input  id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                      @error('email')
                      
                      <span class="invalid-feedback" role="alert" style="font-size: 11px;">
                          <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                      
                      {{-- <div class="invalid-feedback">Please enter your username.</div> --}}
                    </div>
                  </div>


                  <div class="col-12">
                    <label for="yourPassword" class="form-label">Password</label>
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" >
                    {{-- <input type="password" name="password" class="form-control" id="password" required> --}}
                    @error('password')
                    <div class="invalid-feedback">
                        <strong>{{ $message }}</strong>
                    </div>
                     @enderror
                    {{-- <div class="invalid-feedback">Please enter your password!</div> --}}
                  </div>

                  <div class="col-12">
                        <label for="yourPassword" class="form-label">Confirm Password</label>
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" required>
                        {{-- <input type="password" class="form-control @error('password') is-invalid @enderror" name="password_confirmation"id="password_confirmation" required> --}}

                      </div>
                
                  
                  <div class="col-12">
                    <button class="btn btn-primary w-100" type="submit" style="font-size: 12.5px;"> {{ strtoupper(__('Reset Password')) }}</button>
                  </div>
                  <div class="col-12" style="font-size: 13.5px;">
                   
                  </div>
                  <div class="col-12"  style="font-size: 13.5px;">
                 
                  </div>
                </form>

              </div>
            </div>
            <div class="credits  col-md-6" style="font-size: 10.5px;">
                &copy; Copyright <strong> &nbsp;<?= date('Y');?>&nbsp; <span>Financial Guardian System</span></strong>. All Rights Reserved
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                {{-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> --}}
              </div>
           

          </div>
        </div>
      </div>

    </section>

  </div>
</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
</body>
@endsection






















