<!-- Vendor JS Files -->
<script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/chart.js/chart.umd.js"></script>
<script src="/assets/vendor/echarts/echarts.min.js"></script>
<script src="/assets/vendor/quill/quill.min.js"></script>
<script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script type="text/javascript">


      $(document).ready(function(){
          
          // $('#compose').on('click',function(e){
            //     alert('test');
            // })a
     
                // Show a SweetAlert
               
         

          //   alert(<?=Auth::user()->usertype?>);
            var session_usertype = '<?=Auth::user()->usertype?>';
          //   console.log(session_usertype);
            $('#closed').on('click',function(e){
                    // alert('You been noticed the Announcement')

                    const Toast = Swal.mixin({
                         toast: true,
                         position: 'top-right', // Centered horizontally at the top
                         showConfirmButton: false,
                         timer: 4000,
                         background: '#87CEEB', // Light Blue color
                         color: '#000000', // Black text color
                         timerProgressBar: true,
                         customClass: {
                              container: 'custom-toast-container',
                              popup: 'custom-toast-popup',
                              title: 'custom-toast-title',
                              htmlContainer: 'custom-toast-html-container',
                              icon: 'icon-color-black', 
                         },
                         didOpen: (toast) => {
                              toast.addEventListener('mouseenter', Swal.resumeTimer);
                              toast.addEventListener('mouseleave', Swal.resumeTimer);
                         }
                    });

                    // Fire the toast
                    Toast.fire({
                    icon: 'success',
                    //     title: 'Announcement Cleared',
                    html: `
                         <div class="custom-toast-content">
                              <p>You have successfully read and cleared the announcement. Thank you for staying updated! Have a nice day</p>
                         </div>
                    `,
                    
                    });



                    var data = {
                         isclick : true,
                         _token : $('meta[name="csrf-token"]').attr('content')
                    }
                    if(session_usertype == 1){
                         $.ajax({

                              url:  "{{ route('notice') }}",
                              type: 'POST',
                              // dataType : "JSON", incase responce json
                              data: data,
                              success: function(data){

                              }
                         });
                    } else { 
                         $.ajax({

                              url:  "{{ route('unotice') }}",
                              type: 'POST',
                              // dataType : "JSON", incase responce json
                              data: data,
                              success: function(data){

                              }
                         });
                    }
                   

            });

            
       });
          
       $('#clr,#rstClose').on('click',function(e){

          e.preventDefault();

          $('#fullname').val('');
          $('#email').val('');
          $('#retypepassword').val('');
          $('#password').val('');
          $('#username').val('');

       });

      
       $("#btnsubmit").on('click',function(e){

          e.preventDefault();

          var data = $("#registrationFormV2").serialize();;

          // console.log(data);
          // $('#fullname').val('');
          // $('#email').val('');
          // $('#retypepassword').val('');
          // $('#password').val('');
          // $('#username').val('');
          $.ajax({
                    type: "POST", 
                    url: "{{ route('storedata') }}",    
                    data: data,
                    success: function(response) {
                         // console.log();
                         if(response['message'] !== 'Email already taken. Please choose a different email.'){
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
                              title: response['message']
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
                                title: response['message']
                            })

                            return;

                         }

                 
                         
                    },
                    
               });



       });
</script>

      


