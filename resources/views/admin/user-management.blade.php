<?php
    $options = DB::table('fms_g9_tbluserdescrip')->pluck('userdesc','usertype');
?>
@extends('layouts.app')

@section('content')
@include('layouts.appheader')
@include('layouts.appsidebar')
<style>
    .custom-font-size {
    font-size: 12.5px; /* Adjust the font size as needed */
}
</style>
<div class="modal fade" id="AddUserModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Add User Account</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            
            <form class="row g-3" id="crtaccnt">
                @csrf
                <div class="col-md-12">
                    {{-- <div class="card"> --}}
                        <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
                          {{-- <img src="../assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> --}}
                          <img src="https://www.kindpng.com/picc/m/80-807524_no-profile-hd-png-download.png"  style="width: 120px; height:120px;"class="rounded-circle" alt="Profile">
                          {{-- <h2>Kevin Anderson</h2>
                          <h3>Web Designer</h3>
                          <div class="social-links mt-2">
                            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                          </div> --}}
                        </div>
                      {{-- </div> --}}
                </div>
                <hr>
                <br/>
                <div class="col-lg-4">
                    
                    <div class="form-floating mb-3">
                        <select class="form-select" id="selRole" name="selRole" aria-label="Floating label select example">
                            <option value="" selected>- All users -</option>
                            @foreach($options as $usertype => $userdesc)
                            <option value='{{ $usertype }}'>{{ $userdesc }}</option>
                            @endforeach
                        </select>
                        <label for="floatingSelect">User Type</label>
                    </div>

                    
                </div>
                <div class="col-lg-4">
                    <div class="form-floating mb-3">
                        <select class="form-select" id="selSuffix" name="selSuffix" aria-label="Floating label select example">
                          <option value="" selected>- Suffix -</option>
                          <option value="0">Mr</option>
                          <option value="1">Ms</option>
                          <option value="2">Mrs</option>
                        </select>
                        <label for="floatingSelect">Suffix</label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="isSuper" name="isSuper">
                        <label class="form-check-label" for="gridCheck1">
                          Super Administrator
                        </label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-floating">
                        <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name">
                        <label for="floatingName">Last Name</label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-floating">
                      <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name">
                      <label for="floatingName">First Name</label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-floating">
                      <input type="text" class="form-control" id="mname" name="mname" placeholder="Middle Name">
                      <label for="floatingName">Middle Name</label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-floating">
                      <input type="email" class="form-control" id="meamil" name="memail" placeholder="Microsoft Email">
                      <label for="floatingName">@ Microsoft Email</label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-floating">
                      <input type="email" class="form-control" id="peamil" name="pemail" placeholder="Personal Email">
                      <label for="floatingName">@ Personal Email</label>
                      {{-- <span class="input-group-text" id="inputGroupPrepend">@</span> --}}
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-floating">
                      <input type="text" class="form-control" id="username" name="username" placeholder="Username">
                      <label for="floatingName">Username</label>
                    </div>
                </div>

                <p class="card-title" style="font-size: 0.8rem">"Your password should be minimum of 8 characters in alpha-numeric with lowercase and uppercase format with special characters."</p>
                <div class="col-lg-6">
                    <div class="form-floating">
                        <input type="password" class="form-control" id="newpass" name="newpass" placeholder="New Password">
                        <label for="floatingName">New Password</label>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-floating">
                        <input type="password" class="form-control" id="confirmpass" name="confirmpass" placeholder="Confirm Password">
                        <label for="floatingName">Confirm Password</label>
                    </div>
                </div>
              </form><!-- End floating Labels Form -->

        </div>
        <div class="modal-footer">
          {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
          <button type="button" class="btn btn-primary" id="addacct">Save changes</button>
        </div>
      </div>
    </div>
</div><!-- End Large Modal-->
<div class="modal fade" id="AddRoleModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Add User Role</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <br/>
                        <div class="card-body">
                            <div class="row">
                                <form class="row g-3" id="addroledata">       
                                    @csrf
                                    <div class="col-lg-3">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="rid" name="rid" placeholder="Last Name">
                                            <label for="floatingName">RID</label>
                                        </div>
                                        <br/>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-floating">
                                        <input type="text" class="form-control" id="rname" name="rname" placeholder="First Name">
                                        <label for="floatingName">Role Name</label>
                                        </div>
                                        <br/>
                                    </div>
                                   
                                    <div class="col-lg-3">
                                        <div class="col-lg-12">
                                            <div class="d-grid gap-2 mt-2">
                                                <button type="button" class="btn btn-primary rounded-pill" id="addrole">Save</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <br/>
                            <table id="dynamic_Datables" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>RID</th>
                                        <th>Role Name</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- <div class="modal-footer"> --}}
          {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
          {{-- <button type="button" class="btn btn-primary" id="adduserrole">Save changes</button> --}}
        {{-- </div> --}}
      </div>
    </div>
</div><!-- End Large Modal-->
<main id="main" class="main">
  <section class="section dashboard">
    <div class="row">
      <div class="col-lg-12">
        <div class="card">
            <br/>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-floating mb-3">
                          <p class="card-title" style="font-size: 1rem">Filters</p>
                            {{-- <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                              <option selected>Open this select menu</option>
                              <option value="1">One</option>
                              <option value="2">Two</option>
                              <option value="3">Three</option>
                            </select>
                            <label for="floatingSelect">Works with selects</label> --}}
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="form-floating mb-3">
                            <select class="form-select" id="selRoler" aria-label="Floating label select example">
                                <option value="" selected>- All users -</option>
                                @foreach($options as $usertype => $userdesc)
                                <option value='{{ $usertype }}'>{{ $userdesc }}</option>
                                @endforeach
                            </select>
                            <label for="floatingSelect">User Type</label>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="row">
                            <div class="col-lg-6" data-bs-toggle="modal" data-bs-target="#AddRoleModal">
                                <div class="d-grid gap-2 mt-2">
                                    <button type="button" class="btn btn-danger rounded-pill" id="areload">Add Role</button>
                                </div>
                            </div>
                            <br/>
                            <br/>
                            <div class="col-lg-6" data-bs-toggle="modal" data-bs-target="#AddUserModal">
                                <div class="d-grid gap-2 mt-2">
                                    <button type="button" class="btn btn-primary rounded-pill">Add Account</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <br/>
                {{-- <table class="table datatable"> --}}
                    <table id="dynamic_Datable"  cellspacing="0" style="width:100%">
                    <thead>
                        <tr>
                            <th>UserID</th>
                            <th>Name</th>
                            <th>Microsoft Email</th>
                            <th>Personal Email</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
      </div>
    </div>
  </section>
</main>
@include('layouts.appfooter')
@include('layouts.appscript')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function(e){

        
        $('#addacct').click(function(e){
            table.ajax.reload();
            var data = $('#crtaccnt').serialize();
         
            $.ajax({
                url: "{{ route('addusers') }}",
                type: "POST",
                data: data,
                dataType: "json",
                success: function(response){

                    if(response.message == 'User created successfully!') {
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
                              })
                         Toast.fire({
                              icon: 'success',
                              title: response.message
                         })


                         table.ajax.reload();
                    } else {
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
                            })
                            Toast.fire({
                                icon: 'error',
                                title: response.message
                            })

                            return;
                    }



                },
                error: function(error){
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
                            })
                            Toast.fire({
                                icon: 'error',
                                title: error.error
                            })

                            return;
                }
                
            });
        });



        $('#selRoler').on('change', function(e){
           table.ajax.reload();
        });

        const table = $('#dynamic_Datable').DataTable({
            scrollX: true,
            ajax: {
                url: "{{ route('getusers') }}",
                dataSrc: "",
                data: function(d) {
                    // Send additional data if needed
                    d.roleSelector = $('#selRoler').val(); // Get the roleSelector value from an input field
                },
                error: function(xhr, errorType, exception) {
                    console.error(xhr);
                    console.error(errorType);
                    console.error(exception);
                    alert('An error occurred while fetching data from the server. Please reload the page and try again.');
                }
            },
            columns: [
                { data: "id",className: "text-center custom-font-size" },
                { data: "Name", className: "text-left custom-font-size" },
                { data: "MicrosoftEmail",className: "text-left custom-font-size" },
                { data: "PersonalEmail",className: "text-left custom-font-size" },
                { data: "usertype",className: "text-left custom-font-size" },
                // { data: "usertype",className: "text-left custom-font-size" },
                {
                    data: null,
                    className: "text-center custom-font-size"
                    
                    
                }
            ],
            // Other DataTables configurations...
        });








        $('#addrole').on('click', function(e){

            var data = $('#addroledata').serialize();
            userdesctable.ajax.reload();
            $.ajax({
                url: "{{ route('addroledatas') }}",
                type: "POST",
                data: data,
                success: function(response){
                        
                    if(response.message == 'Role has been successfully added!') {
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
                              })
                         Toast.fire({
                              icon: 'success',
                              title: response.message
                         })
                         
                         $('#rid').val('');
                         $('#rname').val('');
                         userdesctable.ajax.reload();
                    } else {
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
                            })
                            Toast.fire({
                                icon: 'error',
                                title: response.message
                            })

                            return;
                    }


                }
            });
        });


        $('#areload').on('click', function(e){
            // $('#rid').val('');
            // $('#rname').val('');
            // alert(userdesctable);
            userdesctable.ajax.reload();                                     
        });     

        const userdesctable = $('#dynamic_Datables').DataTable({
            scrollX: true,
            ajax: {
                url: "{{ route('getusersdesc') }}",
                dataSrc: "",
                data: function(d) {
                    // Send additional data if needed
                    // d.roleSelector = $('#selRoler').val(); // Get the roleSelector value from an input field
                },
                error: function(xhr, errorType, exception) {
                    console.error(xhr);
                    console.error(errorType);
                    console.error(exception);
                    alert('An error occurred while fetching data from the server. Please reload the page and try again.');
                }
            },
            columns: [
                { data: "usertype", className: "text-center custom-font-size" },
                { data: "userdesc", className: "text-left   custom-font-size" },
                {
                    data: null,
                    className: "text-center custom-font-size"
                }
            ],
            // Other DataTables configurations...
        });






    });
</script>
@endsection


