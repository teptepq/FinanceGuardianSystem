@extends('layouts.app')

@section('content')
@include('layouts.appheader')
@include('layouts.appsidebar')
<style>
    .custom-font-size {
    font-size: 12.5px; /* Adjust the font size as needed */
}
</style>
<main id="main" class="main">
    <section class="section">
        <div class="col-lg-12">
            <div class="card">
            <div class="card-body">
                <br/>
                {{-- <h5 class="card-title">Accordion without outline borders</h5> --}}
    
                <!-- Accordion without outline borders -->
                <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#asset-inventory" aria-expanded="false" aria-controls="flush-collapseOne"  id="asset-inventory-reload">
                        Asset Inventory
                    </button>
                    </h2>
                    <div id="asset-inventory" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    {{-- <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                     --}}
                    
                        <section class="section">
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
                                            {{-- <div class="col-lg-4">
                                                <div class="form-floating mb-3">
                                                    <select class="form-select" id="selRoler" aria-label="Floating label select example">
                                                        <option value="" selected>- All users -</option>
                                                        @foreach($options as $usertype => $userdesc)
                                                        <option value='{{ $usertype }}'>{{ $userdesc }}</option>
                                                        @endforeach
                                                    </select>
                                                    <label for="floatingSelect">User Type</label>
                                                </div>
                                            </div> --}}
                                            {{-- <div class="col-lg-4">
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
                                            </div> --}}
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
                        </section>


                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwoDetails" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Details
                    </button>
                    </h2>
                    <div id="flush-collapseTwoDetails" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        Asset Locations
                    </button>
                    </h2>
                    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Status
                    </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Maintenance
                    </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Depreciation
                    </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Transactions
                    </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Asset Reports and Analytics
                    </button>
                    </h2>
                    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                    </div>
                </div>
                <br/>
                </div><!-- End Accordion without outline borders -->
    
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