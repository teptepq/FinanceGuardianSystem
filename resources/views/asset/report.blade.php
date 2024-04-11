<div class="modal fade" id="ExtralargeModalReport" tabindex="-1">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        {{-- <div class="modal-header">
          <h5 class="modal-title">Extra Large Modal</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div> --}}
        </br>
        <div class="modal-body" >
          <div class="row">
            <div class="col-lg-12">
              
              <div class="alert alert-primary alert-dismissible fade show" role="alert">
                <h4 class="alert-heading" style="font-size: 1rem;">Reports and Analytics</h4>
                <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">  This system offers functionalities for budgeting, accounting, financial reporting, and analysis. It enables users to efficiently manage financial resources, track expenses, monitor revenue streams, and ensure compliance with regulatory requirements. With features like real-time data updates, customizable reporting tools, and integrated workflows, the financial management system empowers decision-makers to make informed choices and optimize financial performance.  </p>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            
                <div class="row">
                 
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                <h5 class="card-title"  style="font-size: 0.90rem">Depreciation Calculation</h5>
                                <div class="d-grid gap-2 mt-3">
                                    <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="Depreciation" id="dept">Depreciation</button>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body" style="font-size: 0.5rem">
                                    <h5 class="card-title" style="font-size: 0.90rem">Asset Tracking</h5>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assetdetails" id="det">Asset Details</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assetlocations" id="loc">Asset Locations</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assetstatus" id="stats">Asset Status</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assetmaintenance" id="maintenance">Asset Maintenance</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assettagging" id="tagging">Asset Employee Tagging</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assetdepreciation" id="dep">Asset Employee Depreciation</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="assettransaction" id="transac">Asset Transactions</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                <h5 class="card-title" style="font-size: 0.90rem">Tax</h5>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="rate" id="rate">Rate</button>
                                    </div>
                                    <div class="d-grid gap-2 mt-3">
                                        <button class="btn btn-primary" type="button" style="font-size: 0.90rem" value="calculation" id="calcu">Calculation</button>
                                    </div>
                                </div>
                            </div>
                        </div>
           
                </div>
            </div>
          </div>
        </div>
      </br>
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
      </div>
    </div>
  </div><!-- End Extra Large Modal-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script type="text/javascript">
  


  $(document).ready(function(){
    $('#dept,#det,#loc,#stats,#maintenance,#tagging,#dep,#transac').on('click', function(e){
        // Prevent the default behavior of the click event
        e.preventDefault();
        
        // Get the value of the clicked element
        var sjob = $(this).val();
        
        // Send an AJAX request to generate the PDF
        $.ajax({
            url: "{{ route('reportidx') }}",
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}",
                sjob: sjob
            },
            xhrFields: {
                responseType: 'blob' // Set the response type to 'blob'
            },
            success: function(data){
                // Create a blob object from the response
                var blob = new Blob([data], { type: 'application/pdf' });
                // Create a temporary anchor element
                var a = document.createElement('a');
                // Create a URL for the blob object
                var url = window.URL.createObjectURL(blob);
                // Set the href attribute of the anchor element to the URL
                a.href = url;
                // Set the download attribute to suggest a filename for the downloaded file
                a.download = 'document.pdf';
                // Append the anchor element to the document body
                document.body.appendChild(a);
                // Trigger a click event on the anchor element to start the download
                a.click();
                // Remove the anchor element from the document body
                document.body.removeChild(a);
                // Revoke the URL to release the resources
                window.URL.revokeObjectURL(url);
            }
        });
    });
});
  </script>