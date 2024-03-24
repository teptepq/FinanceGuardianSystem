@extends('layouts.app')

@section('content')
@include('layouts.appheader')
@include('layouts.appsidebar')
<style>
    .custom-font-size {
    font-size: 12.5px; /* Adjust the font size as needed */
}
</style>
@include('asset.modal')
<main id="main" class="main">
    <section class="section">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <br/>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <br/>
                             
                                    {{-- <h5 class="card-title"></h5> --}}
                                    <!-- Tooltips Examples -->
                                    <a type="button" class="btn btn-secondary" data-bs-target="#assetDetails" data-bs-toggle="modal">
                                      Asset Details
                                    </a>
                                    
                                    <a type="button" class="btn btn-secondary" data-bs-target="#assetLocations" data-bs-toggle="modal">
                                        Asset Locations
                                    </a>
                                    <a type="button" class="btn btn-secondary" data-bs-target="#assetStatus" data-bs-toggle="modal">
                                        Asset Status
                                    </a>
                                    <a type="button" class="btn btn-secondary" data-bs-target="#assetMaintenance" data-bs-toggle="modal">
                                        Asset Maintenance
                                    </a>
                                    <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Depreciation">
                                        Asset Depreciation
                                    </a>
                                    <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Transactions">
                                        Asset Transactions
                                    </a>
                                    <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Reports And Analytics">
                                        Reports And Analytics
                                    </a>
                                    {{-- <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title=" Re-Calculate Depreciation Asset">
                                       Re-Calculate
                                    </a> --}}
                                    <!-- End Tooltips Examples -->
                      
                                  </div>
                            </div>
                        </div> 
                        <br/>
                        <div class="col-lg-12">
                            <div class="card">
                               
                                <div class="card-body">
                                    <br/>
                                    {{-- <div class="col-lg-12 pb-2">
                                        <button type="button" class="btn btn-primary" style="float:right;">
                                            Re-Calculate Depreciation Asset
                                        </button>
                                        <br/>
                                    </div> --}}
                                    <br/>
                                    {{-- <table class="table datatable"> --}}
                                        <table id="dynamic_Datable"  cellspacing="0" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Asset Name</th>
                                                <th>Description</th>
                                                <th>Category</th>
                                                <th>Purchase Cost</th>
                                                <th>Current Value</th>
                                                <th>Status</th>
                                                <th>Depreciation Method</th>
                                                <th>Depreciation Rate</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {{-- thru ajax server side --}}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
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
@include('admin.track-script')
@endsection