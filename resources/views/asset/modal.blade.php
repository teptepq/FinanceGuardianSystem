{{-- asset details --}}

<style>
    /* Add your other styles here */
  .custom-toast-popup {
      width: 500px; /* Adjust the width as needed */
  }
  
  .icon-color-black {
      color: black !important; /* Change the color of the icon */
  }
  .custom-toast-content {
   /* Adjust the maximum width of the content area */
    /* Hide overflow to prevent it from expanding beyond the width */
   
      font-size: 12.5px;/* Add padding to the content */
      max-width: 100%;
      overflow: hidden;
  }
  .custom-font-size {
      font-size: 12px; /* Adjust the font size as needed */
  }
  .custom-tr-size {
    font-size: .70rem;
    text-transform: capitalize !important;
  }
  
  .center {
    font-size: .70rem;
    text-align: center;
    text-transform: capitalize !important;
  }
  
  </style>
<div class="modal fade assetDetails" id="assetDetails" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        {{-- <div class="modal-header">
            <h5 class="modal-title">Details</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div> --}}

      
        <div class="modal-body">
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
                <h4 class="alert-heading" style="font-size: 1rem;">Asset Details Overview</h4>
                <p style="font-size: 0.8rem; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"> This data empowers stakeholders to make informed decisions regarding asset valuation, budgeting, and forecasting. Additionally, the table supports proactive maintenance management by recording Maintenance Schedule, Last Maintenance Date, and Next Maintenance Date, ensuring optimal asset performance and longevity. With fields dedicated to Depreciation Method, Salvage Value, and Responsible Person, the table promotes accountability and clarity regarding asset ownership and maintenance responsibilities. </p>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            </br>
            <div class="card">
                <div class="card-body">
                </br>
                  {{-- <h5 class="card-title"></h5> --}}
                  {{-- <p>Add lightweight datatables to your project with using the <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Simple DataTables</a> library. Just add <code>.datatable</code> class name to any table you wish to conver to a datatable. Check for <a href="https://fiduswriter.github.io/simple-datatables/demos/" target="_blank">more examples</a>.</p> --}}
    
                  <!-- Table with stripped rows -->
                  <table id="dynamic_detail" cellspacing="0" style="width:100%" >
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Asset Name</th>
                        <th>Description</th>
                        <th>Asset Category</th>
                        <th>Asset Type</th>
                        <th>Purchase Date</th>
                        <th>Purchase Price</th>
                        <th>Current Value</th>
                        
                        {{-- <th>Action</th> --}}
                      </tr>
                    </thead>
                    <tbody>
                      {{-- <tr>
                        <td>Unity Pugh</td>
                        <td>9958</td>
                        <td>Curicó</td>
                        <td>2005/02/11</td>
                        <td>37%</td>
                      </tr> --}}
                      
                    </tbody>
                  </table>
                  <!-- End Table with stripped rows -->
    
                </div>
              </div>
        </div>
        {{-- <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
        </div>
    </div>
</div><!-- End asset details Modal-->

{{-- asset details --}}
<div class="modal fade" id="assetLocations" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Locations</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
           
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
        </div>
    </div>
</div><!-- End asset details Modal-->

{{-- asset details --}}
<div class="modal fade" id="assetStatus" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Status</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
           
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
        </div>
    </div>
</div><!-- End asset details Modal-->

{{-- asset details --}}
<div class="modal fade" id="assetMaintenance" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Maintenance</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
        </div>
    </div>
</div><!-- End asset details Modal-->


{{-- asset details --}}
<div class="modal fade" id="assetDetails" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title">Details</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
           
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
        </div>
        </div>
    </div>
</div><!-- End asset details Modal-->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script>


</script>
