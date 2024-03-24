<script>
    $(document).ready(function(e){

        var userid = "<?=Auth::user()->usertype?>";

        var url = ''
        var urlsub = ''

        if( userid == '1' ){
            url =  "{{ route('getAssetInventory') }}";
            urlsub =   "{{ route('recompute') }}";
        } else {
            url =  "{{ route('mgetAssetInventory') }}";
            urlsub =   "{{ route('mrecompute') }}";
        }


        $('#asset-inventory-reload').on('click',function(e){
            inventory.ajax.reload();
        });


        const inventory = $('#dynamic_Datable').DataTable({
            scrollX: true,
            ajax: {
                url: url,
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
                { data: "asset_name",className: "text-left custom-font-size" },
                { data: "description", className: "text-left custom-font-size" },
                { data: "category",className: "text-left custom-font-size" },
                { data: "purchase_cost",className: "text-center custom-font-size" },
                { data: "current_value",className: "text-center custom-font-size" },
                { data: "status",className: "text-left custom-font-size" },
                { data: "depreciation_method",className: "text-left custom-font-size" },
                { data: "depreciation_rate",className: "text-center custom-font-size" },
                // { data: "usertype",className: "text-left custom-font-size" },
                {
                    data: null,
                    className: "text-center custom-font-size"
                    
                    
                }
            ],
            // Other DataTables configurations...
        });
    });
</script>