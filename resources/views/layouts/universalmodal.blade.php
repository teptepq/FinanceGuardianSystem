<?php

$load = array();
$c = 1;

// DROPDONW SELECT
$accessibleFilter = new App\Classes\AccessibleFilterClass ;
$Receipt = $accessibleFilter->Receipt();

// FETCH DATA
$load      = $accessibleFilter->loadData();
// dd($load);
// $userDesc  = $accessibleFilter->userdesc();
?>


@if(Auth::user()->usertype == '3')


  <div class="modal fade" id="BuylargeModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <i class="bi bi-credit-card"></i>
          <h5 class="modal-title"></h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          
        </div>
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
      </div>
    </div>
  </div><!-- End Large Modal-->




    <div class="modal fade" id="ExtralargeModalPayment" tabindex="-1">
      <div class="modal-dialog modal-xl">
        <div class="modal-content">
          <div class="modal-header">
            <i class="bi bi-credit-card-2-back"></i>
            {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <section class="section error-404 min-vh-100 d-flex flex-column align-items-center justify-content-center">
              <h1>404</h1>
              <h2>The page you are looking for doesn't exist.</h2>
              <img src="/assets/img/not-found.svg" class="img-fluid py-5" alt="Page Not Found">
            </section>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
          </div>
        </div>
      </div>
    </div><!-- End Extra Large Modal-->

    <div class="modal fade" id="ExtralargeModalTransact" tabindex="-1">
      <div class="modal-dialog modal-xl">
        <div class="modal-content" >
          {{-- <div class="modal-header"> --}}
            {{-- <i class="bi bi-clock-history"></i> --}}
            {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
            {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
          {{-- </div> --}}
          <br>
          <div class="modal-body">
            <?php date_default_timezone_set('Asia/Manila');
            $currentDate = date("M d, Y, h:i A"); ?>
            
            <h5 class="alert-heading" style="font-size: 13.5px;">Transactions as of {{ $currentDate }}  <i class="bi bi-clock-history" style="float: right;" data-bs-toggle="modal" data-bs-target="#ExtralargeModalPayment"></i></h5>
            <hr>
            
            <div class="alert alert-primary alert-dismissible fade show" role="alert"  data-bs-toggle="modal" data-bs-target="#ExtralargeModalPayment">
              <div class="row" >
                <div class="col-lg-6" >
                  <h4 class="alert-heading" style="font-size: 13.5px;">Online Payment - Web Pay</h4>
                </div>
                <div class="col-lg-6" >
                  <h5 class="alert-heading" style="float: right; font-size: 13.5px;">-1624.0</h5>
                </div>
              </div>
              
              {{-- <p>Et suscipit deserunt earum itaque dignissimos recusandae dolorem qui. Molestiae rerum perferendis laborum. Occaecati illo at laboriosam rem molestiae sint.</p> --}}
              <hr>
              <p class="mb-0" style="font-size: 13.5px;">{{ $currentDate }}</p>
              
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              
            </div>
            <div class="row" >
              
              <div class="col-lg-4">
                <h4 class="alert-heading" style="font-size: 13.5px; text-align:center;"></h4>

              </div>
              <div class="col-lg-4">
                <h4 class="alert-heading" style="font-size: 13.5px; text-align:center;">Want to see more? Submit a request.<br>We'll send your transaction history to your email.</h4>
              </div>
              <div class="col-lg-4">
                <h4 class="alert-heading" style="font-size: 13.5px; text-align:center;"></h4>
              </div>
              <div class="d-grid gap-2 mt-2">
                <button type="button" class="btn btn-primary" style="font-size: 14.5px;">Request Transaction History</button>
              </div>
         
              
            </div>
            {{-- <section class="section error-404 min-vh-100 d-flex flex-column align-items-center justify-content-center">
              <h1>404</h1>
              <h2>The page you are looking for doesn't exist.</h2>
              <img src="/assets/img/not-found.svg" class="img-fluid py-5" alt="Page Not Found">
            </section> --}}
          </div>
          <div class="modal-footer">
            
            {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
          </div>
        </div>
      </div>
    </div><!-- End Extra Large Modal-->
  @endif



  





  {{-- admin side modal --}}
@if( Auth::user()->usertype == '1' || Auth::user()->usertype == '0')
  <div class="modal fade" id="ExtralargeModalUsers" tabindex="-1">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <i class="bi bi-person"></i>
          {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="rstClose"></button>
        </div>
        <div class="modal-body">
          <section class="section">
            <div class="row">
              <div class="col-lg-12">
      
                <div class="card">
                  <div class="card-body" id="createdata">
                    <h5 class="card-title"></h5>   
                    <form id=registrationFormV2>
                      @csrf
                    <div class="row">
                    

                      <div class="col-md-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Your Name">
                          <br>
                          <label for="floatingName">Fullname</label>
                        </div>
                      </div>
                       <div class="col-md-3">
                        <div class="form-floating">
                        {{-- <label for="inputDate" class="col-lg-6 col-form-label" style="font-size: 12.5px;">Usertype</label> --}}
                        {{-- <select class="form-select" aria-label="Default select example">
                          <option value="" selected> - Select Recepient - </option>
                          <option value="1">Admin</option>
                          <option value="2">Manager</option>
                          <option value="3">User</option>
                        </select> --}}
                        @php
                          echo Form::select('usertype', $Receipt , (isset($Receipt)?$Receipt:null), array('class' => 'form-select','id' => 'usertype'));
                        @endphp 
                        <label for="floatingSelect">Usertype</label>
                        <br>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-floating">
                        {{-- <label for="inputDate" class="col-lg-6 col-form-label" style="font-size: 12.5px;">Usertype</label> --}}
                        <select class="form-select" aria-label="Default select example" name="branch">
                          <option value="" selected> - Select Branch - </option>
                          <option value="1">Caloocan</option>
                          <option value="2">Valenzuela</option>
                          {{-- <option value="3">User</option> --}}
                        </select>
                        {{-- @php
                          echo Form::select('usertype', $Receipt , (isset($Receipt)?$Receipt:null), array('class' => 'form-select','id' => 'usertype'));
                        @endphp  --}}
                        <label for="floatingSelect">Branch</label>
                        <br> 
                        </div>
                      </div> 
                    
                      <div class="col-md-5">
                        <div class="form-floating">
                          <input type="text" class="form-control" id="username" name="username" placeholder="Your Name">
                          <br>
                          <label for="floatingName">Username</label>
                        </div>
                      </div>
                      
                      <div class="col-md-7">
                        <div class="form-floating">
                          <input type="email" class="form-control" id="email" name="email" placeholder="Your Email">
                          <br>
                          <label for="floatingEmail">Email</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating">
                          <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                          <br>
                          <label for="floatingPassword">Password</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating">
                          <input type="password" class="form-control" id="retypepassword" name="retypepassword" placeholder="Password">
                          <br>
                          <label for="floatingPassword">Retype Password</label>
                        </div>
                      </div>
                      <div class="text-center">
                        <button type="reset" class="btn btn-secondary" style="float: right; margin-left: 7px;" id='clr'>Clear Entries</button>
                        <button type="submit" class="btn btn-primary" style="float: right;" id="btnsubmit">Submit</button>
                       
                      </div>
                      
                    </div><!-- End floating Labels Form -->
                    </form>
                    
                  </div>
                </div>
      
              </div>
      
              <div class="col-lg-12">
      
                <div class="card">
                  <div class="card-body">
                       <!-- Table with stripped rows -->
                <br><br>
                <table class="table datatable" id="reload">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>Name</th>
                    <th>Email</th>
                    {{-- <th data-type="date" data-format="YYYY/DD/MM">Start Date</th> --}}
                    <th>UserType</th>
                    <th>Tools</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($load as $value)
                  {{-- @dd($value['']) --}}
            {{-- Adjust the following lines based on the actual properties in your $value --}}
                  <tr>
                    <td><?= $c++; ?></td>
                    <td><?= $value->NAME ?></td>
                    <td><?= $value->email ?></td>
                    <td><?= $value->descid ?></td>
                    <td>
                      <button type="button" class="btn btn-info view-btn"  data-bs-toggle="modal" data-bs-target="#basicModal" data-name="{{ $value->NAME }}" data-email="{{ $value->email }}" data-descid="{{ $value->descid }}"><i class="bi bi-eye"></i></button>
                      {{-- <button type="button" class="btn btn-info"><i class="bi bi-eye"></i></button> --}}
                  </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
                  </div>
                </div>
      
              </div>
            </div>
          </section>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
        </div>
      </div>
    </div>
  </div>
@endif

<!-- Modal -->



<div class="modal fade" id="basicModal" tabindex="-1"  aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      {{-- <div class="modal-header">
        <h5 class="modal-title">Basic Modal</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div> --}}
      <div class="modal-body">
        <p>Name: <span id="modalName"></span></p>
        <p>Email: <span id="modalEmail"></span></p>
        <p>Description ID: <span id="modalDescId"></span></p>
        {{-- Add more fields as needed --}}
    </div>
      {{-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> --}}
    </div>
  </div>
</div><!-- End Basic Modal-->

@if( Auth::user()->usertype == '2')
<div class="modal fade" id="ExtralargeModalBarChart" tabindex="-1">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        {{-- <i class="bi bi-bar-chart"></i> --}}
        {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
        {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="rstClose"></button> --}}
      </div>
      <div class="modal-body">
        <section class="section">
          <div class="row">
            <div class="col-lg-12">
    
              <div class="card">
                <div class="card-body" id="createdata">
                  <h5 class="card-title"></h5>   
                  
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title"></h5>
            
                          <!-- Bar Chart -->
                          <canvas id="barChart" style="max-height: 400px;"></canvas>
                          <script>
                            document.addEventListener("DOMContentLoaded", () => {
                              new Chart(document.querySelector('#barChart'), {
                                type: 'bar',
                                data: {
                                  labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                                  datasets: [{
                                    label: 'Bar Chart',
                                    data: [65, 59, 80, 81, 56, 55, 40],
                                    backgroundColor: [
                                      'rgba(255, 99, 132, 0.2)',
                                      'rgba(255, 159, 64, 0.2)',
                                      'rgba(255, 205, 86, 0.2)',
                                      'rgba(75, 192, 192, 0.2)',
                                      'rgba(54, 162, 235, 0.2)',
                                      'rgba(153, 102, 255, 0.2)',
                                      'rgba(201, 203, 207, 0.2)'
                                    ],
                                    borderColor: [
                                      'rgb(255, 99, 132)',
                                      'rgb(255, 159, 64)',
                                      'rgb(255, 205, 86)',
                                      'rgb(75, 192, 192)',
                                      'rgb(54, 162, 235)',
                                      'rgb(153, 102, 255)',
                                      'rgb(201, 203, 207)'
                                    ],
                                    borderWidth: 1
                                  }]
                                },
                                options: {
                                  scales: {
                                    y: {
                                      beginAtZero: true
                                    }
                                  }
                                }
                              });
                            });
                          </script>
                          <!-- End Bar CHart -->
            
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6">
                   
                      <p style="margin-top: 10px;  font-family: 'Arial', sans-serif; font-size: 16px; line-height: 1.5; color: #333;">
                        Hello Manager,
                    </p>
                    
                    <p style="text-indent: 20px; font-family: 'Arial', sans-serif; font-size: 16px; line-height: 1.5; color: #333;">
                      Welcome to the Sales Summary Chart for this year from vendor syste! This concise overview encapsulates key sales metrics, including a breakdown of product contributions and growth trends. Notably, an impressive 80% boost in overall sales has been achieved. Hover over data points for specifics, zoom in for detailed analysis, and utilize filters for targeted insights. This chart empowers you to make informed decisions and capitalize on opportunities for continued success.
                    </p>


                    <p style="float: right; font-family: 'Arial', sans-serif; font-size: 13.5px; line-height: 1.5; color: #333;">
                      Team Financial Guardian
                    </p>
                    
                    
                      
                    </div>
                  </div>
                  
                  
                </div>
              </div>
    
            </div>
          </div>
        </section>
      </div>
      <div class="modal-footer">
        {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
        {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
      </div>
    </div>
  </div>
</div>
@endif
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('.view-btn').on('click', function () {
            var name = $(this).data('name');
            var email = $(this).data('email');
            var descid = $(this).data('descid');

            // Set the values in the modal
            $('#modalName').text(name);
            $('#modalEmail').text(email);
            $('#modalDescId').text(descid);

            // Show the modal
            $('#basicModal').modal('show');
        });

        // Close modal when the "Close" button inside the modal is clicked
        $('#basicModal').on('hidden.bs.modal', function () {
            // Optionally, you can perform additional actions when the modal is closed
            console.log('Modal closed');
        });
    });
</script>


