<div class="col-lg-12">
    <div class="card">
        <div class="card-body">
            <br/>
     
            {{-- <h5 class="card-title"></h5> --}}
            <!-- Tooltips Examples -->
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Details" href="{{ route('assetdetail') }}">
              Asset Details
            </a>
            
            <a type="button" class="btn btn-secondary"  data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Details" href="{{ route('assetlocation') }}">
                Asset Locations
            </a>
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Status" href="{{ route('assetstatus') }}">
                Asset Status
            </a>
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Maintenance" href="{{ route('assetmaintenance') }}">
                Asset Maintenance
            </a>
            

            {{-- @if(!Auth::user()->usertype == '3' || !Auth::user()->isSuper == '1' )
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Depreciation" href="{{ route('mdepreciation') }}">
            @else
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Depreciation"href="{{ route('user-depreciation') }}">
            @endif --}}

            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Reports And Analytics">
              Asset Tagging
          </a>
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Depreciation" href="{{ route('assetdepreciation') }}">
                Asset Depreciation
            </a>
            <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Asset Transactions" href="{{ route('assettransaction') }}">
                Asset Transactions
            </a>
            {{-- <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title="Reports And Analytics">
                Reports And Analytics
            </a> --}}
           
            {{-- <a type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-original-title=" Re-Calculate Depreciation Asset">
               Re-Calculate
            </a> --}}
            <!-- End Tooltips Examples -->

          </div>
    </div>
</div> 