          @extends('layouts.app')
          @section('content')

          <main>
            <body>

              <main>
                <div class="container">
            
                  <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                    <div class="container">
                      <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
            
                          <div class="d-flex justify-content-center py-4">
                            <a href="{{ route('register') }}" class="logo d-flex align-items-center w-auto">
                              <img src="assets/img/subhead.png" alt="">
                              {{-- <span class="d-none d-lg-block">NiceAdmin</span> --}}
                            </a>
                          </div><!-- End Logo -->
            
                          <div class="card mb-3">
            
                            <div class="card-body">
            
                              <div class="pt-4 pb-2">
                                <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                                <p class="text-center small">Enter your personal details to create account</p>
                              </div>
            
                              {{-- <form class="row g-3 needs-validation" novalidate> --}}
                                <form id="form" class="row g-3">
                                  @csrf

                                  
                                <div class="col-12">
                                
                                  <label for="yourName" class="form-label">Fullname</label>
                                  <input type="text" name="name" class="form-control  @error('name') is-invalid @enderror" id="name"  name="name" value="{{ old('name') }}"  required>
                                  {{-- <div class="invalid-feedback">Please, enter your name!</div> --}}
                                  @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                  @enderror
                                </div>
            
                                <div class="col-12">
                                
                                  
                                  <label for="yourEmail" class="form-label">Email</label>
                                  {{-- <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="email" required> --}}
                                  <div class="input-group has-validation">
                                  <span class="input-group-text" id="inputGroupPrepend">@</span>
                                  <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" id="email" required>
                                  </div>
                                  @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                  @enderror
                                </div>
            
                                {{-- <div class="col-12">
                                  <label for="yourUsername" class="form-label">Username</label>
                                  <div class="input-group has-validation">
                                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                                    <input type="text" name="username" class="form-control" id="yourUsername" required>
                                    <div class="invalid-feedback">Please choose a username.</div>
                                  </div>
                                </div>
            --}}
                                <div class="col-12">
                                  <label for="yourPassword" class="form-label">Password</label>
                                  <input type="password" id=password name="password" class="form-control @error('password') is-invalid @enderror" name="password" id="password" required>
                                  @error('password')
                                  <span class="invalid-feedback" role="alert">
                                      <strong>{{ $message }}</strong>
                                  </span>
                                  @enderror
                                </div>
            

                                <div class="col-12">
                                  <label for="yourPassword" class="form-label">Retype Password</label>
                                  <input type="password" class="form-control @error('password') is-invalid @enderror" name="password_confirmation"id="password_confirmation" required>

                                </div>
                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                                <div class="col-12">
                                  <div class="form-check">
                                    <input class="form-check-input" name="terms" type="checkbox" value="1" id="acceptTerms" required>
                                    <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                                    <div class="invalid-feedback">You must agree before submitting.</div>
                                  </div>
                                </div>
                              </form>
                              <br>
                                <div class="col-12">
                                  <button class="btn btn-primary w-100" type="submit" id="create">Create Account</button>
                                </div>
                                <br>
                                <div class="col-12">
                                  <p class="small mb-0">Already have an account? <a href="{{ route('login') }}">Log in</a></p>
                                </div>
                          
            
                            </div>
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

              {{-- <script type="text/javascript">
                  $(document).ready(function() {
                    $('#create').on('click', function(e) {
                            e.preventDefault();
                            $.ajax({
                                url: "{{ route('user-account') }}",
                                method: "POST",
                                data: $('#form').serialize(),
                                success: function(response) {
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

                                    $('#name').val('');
                                    $('#password_confirmation').val('');
                                    $('#password').val('');
                                    $('#email').val('');
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
              </script> --}}
            </body>
            
          </main><!-- End #main -->


          @endsection