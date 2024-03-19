<?php
    $options = DB::table('fms_g9_taxtypes')->pluck('tax_type_name','tax_type_code');
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
<div class="modal fade" id="AddTaxModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        {{-- <div class="modal-header">
          <h5 class="modal-title">Add Tax Rate</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div> --}}
        <div class="modal-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <br/>
                        <div class="card-body">
                            <div class="row">
                                <form id="addTaxRateForm">
                                    <div class="form-group">
                                      <label for="taxRateName">Tax Rate Name:</label>
                                      <input type="text" class="form-control" id="taxRateName" required>
                                    </div>
                                    <div class="form-group">
                                      <label for="ratePercentage">Rate Percentage:</label>
                                      <input type="number" class="form-control" id="ratePercentage" step="0.01" min="0" max="100" required>
                                    </div>
                                    <div class="form-group">
                                      <label for="effectiveFrom">Effective From:</label>
                                      <input type="date" class="form-control" id="effectiveFrom" required>
                                    </div>
                                    <div class="form-group">
                                      <label for="effectiveTo">Effective To (Optional):</label>
                                      <input type="date" class="form-control" id="effectiveTo">
                                    </div>
                                    <div class="form-group">
                                      <label for="description">Description (Optional):</label>
                                      <textarea class="form-control" id="description" rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                      <label for="taxAuthority">Tax Authority (Optional):</label>
                                      <input type="text" class="form-control" id="taxAuthority">
                                    </div>
                                    <div class="form-group">
                                      <label for="region">Region (Optional):</label>
                                      <input type="text" class="form-control" id="region">
                                    </div>
                                    <div class="form-group">
                                      <label for="taxType">Tax Type (Optional):</label>
                                      <input type="text" class="form-control" id="taxType">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Add Tax Rate</button>
                                  </form>
                            </div>
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
                <br/>
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
                                        <option value="" selected>- All Tax -</option>
                                        @foreach($options as $code => $desc)
                                        <option value='{{ $code }}'>{{ $desc }}</option>
                                        @endforeach
                                    </select>
                                    <label for="floatingSelect">Tax Type</label>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="row">
                                    <div class="col-lg-6" data-bs-toggle="modal" data-bs-target="#AddRoleModal">
                                        <div class="d-grid gap-2 mt-2">
                                            <button type="button" class="btn btn-danger rounded-pill" id="areload">Add Tax</button>
                                        </div>
                                    </div>
                                    <br/>
                                    <br/>
                                    <div class="col-lg-6" data-bs-toggle="modal" data-bs-target="#AddTaxModal">
                                        <div class="d-grid gap-2 mt-2">
                                            <button type="button" class="btn btn-primary rounded-pill">Add Tax Rate</button>
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
                    {{-- <h5 class="card-title">Datatables</h5>
                    <p>Add lightweight datatables to your project with using the <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Simple DataTables</a> library. Just add <code>.datatable</code> class name to any table you wish to conver to a datatable. Check for <a href="https://fiduswriter.github.io/simple-datatables/demos/" target="_blank">more examples</a>.</p> --}}

                    <!-- Table with stripped rows -->
                    <table id="dynamic_Datable"  cellspacing="0" style="width:100%">
                    <thead>
                        <tr>
                        <th>Tax Rate ID</th>
                        <th>Tax Rate Name</th>
                        <th>Tax Description</th>
                        <th>Rate Percentage</th>
                        <th>Actions</th>
                        </tr>
                    </thead>
                    </table>
                    <!-- End Table with stripped rows -->

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
        const table = $('#dynamic_Datable').DataTable({
            scrollX: true,
            ajax: {
                url: "{{ route('getTaxes') }}",
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
                { data: "taxid",className: "text-center custom-font-size" },
                { data: "taxname", className: "text-left custom-font-size" },
                { data: "description", className: "text-left custom-font-size" },
                { data: "percent",className: "text-center custom-font-size" },
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