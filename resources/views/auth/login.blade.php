@extends('layouts.app')
@section('content')
<div class="container">

<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
<div class="container">
<div class="row justify-content-center">
<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

<div class="d-flex justify-content-center py-4">
<a href="" class="logo d-flex align-items-center w-auto">
<img src="assets/img/subhead.png" alt="">
{{-- <span class="d-none d-lg-block">NiceAdmin</span> --}}
</a>
</div><!-- End Logo -->

<div class="card mb-3">

<div class="card-body">

<div class="pt-4 pb-2">
<h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
<p class="text-center small">Enter your email & password to login</p>
</div>

{{-- <form class="row g-3 needs-validation" novalidate> --}}
{{-- <form method="POST" action="{{ route('login') }}" class="row g-3 needs-validation" novalidate> --}}
  <form id="loginform" class="row g-3 needs-validation" novalidate>
  @csrf
<div class="col-12">
  <label for="yourUsername" class="form-label">Email</label>
  <div class="input-group has-validation">
    <span class="input-group-text" id="inputGroupPrepend">@</span>
    <input  id="email" type="email" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

    @error('email')
    <div class="invalid-feedback">
      <strong>{{ $message }}</strong>
    </div>
    @enderror
    
    {{-- <div class="invalid-feedback">Please enter your username.</div> --}}
  </div>
</div>

<div class="col-12">
  <label for="yourPassword" class="form-label">Password</label>
  <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
  {{-- <input type="password" name="password" class="form-control" id="password" required> --}}
  @error('password')
  <div class="invalid-feedback">
      <strong>{{ $message }}</strong>
  </div>
  @enderror
  {{-- <div class="invalid-feedback">Please enter your password!</div> --}}
</div>

<div class="col-12">
  <div class="form-check">
    <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
    <label class="form-check-label" for="rememberMe">Remember me</label>
  </div>
</div>
<div class="col-12">
  <button class="btn btn-primary w-100" type="submit" id='login'>Login</button>
</div>
<div class="col-12" style="font-size: 13.5px;">
  <p class="small mb-0">Don't have account? <a href="{{route('register')}}">Create an account</a></p>
</div>
<div class="col-12"  style="font-size: 13.5px;">
  <p class="small mb-0">Forgot your password? <a href="{{route('password.reset','')}}">Click here!</a></p>
</div>
</form>

</div>
</div>

<div class="credits" style="font-size: 11.5px;">
&copy; Copyright <strong> &nbsp;<?= date('Y');?>&nbsp; <span>Financial Guardian System</span></strong>. All Rights Reserved
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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
$('#login').on('click', function(e){

e.preventDefault();

$.ajax({
url: "{{ route('login') }}",
method: "POST",
data: $('#loginform').serialize(),
success: function(response) {  
if (response.redirect) {
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
                  });
                  Toast.fire({
                      icon: 'success',
                      title: response.message
                  });

                  window.location.href = response.redirect;
} else if (response.error) {

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
    });
    Toast.fire({
        icon: 'error',
        title: 'Invalid Credentials'
    });
}

},
error: function(xhr, textStatus, errorThrown) {
                  // Handle errors
                  let errorMessage = 'An error occurred.';
                  
                  if (xhr.responseJSON && xhr.responseJSON.message) {
                      errorMessage = xhr.responseJSON.message;
                  } else if (xhr.statusText) {
                      errorMessage = xhr.statusText;
                  }

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
                  });
                  Toast.fire({
                      icon: 'error',
                      title: errorMessage
                  });
              }
});

});
});
</script>
</body>
@endsection




















