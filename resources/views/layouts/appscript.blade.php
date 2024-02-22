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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script type="text/javascript">
       $(document).ready(function(){
            // $('#compose').on('click',function(e){
            //     alert('test');
            // })

            $('#closed').on('click',function(e){

                    var data = {
                         isclick : true,
                         _token : $('meta[name="csrf-token"]').attr('content')
                    }

                    $.ajax({

                         url:  "{{ route('unotice') }}",
                         type: 'POST',
                         // dataType : "JSON", incase responce json
                         data: data,
                         success: function(data){

                         }
                    });

            });

            
       });
</script>