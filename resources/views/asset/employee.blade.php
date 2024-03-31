<div class="modal fade" id="fullscreenModalEmployee" tabindex="-1">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="text-transform: uppercase">Employee Information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body mt-3">
                <section class="section profile">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">Statistics</h5>
                                    <!-- Pie Chart -->
                                    <canvas id="pieChart" style="max-height: 400px;"></canvas>
                                    <script>
                                        document.addEventListener("DOMContentLoaded", () => {
                                            new Chart(document.querySelector('#pieChart'), {
                                                type: 'pie',
                                                data: {
                                                    labels: [
                                                        'Inactive',
                                                        'Active',
                                                        'Pending'
                                                    ],
                                                    datasets: [{
                                                        label: 'Total',
                                                        data: [250, 50, 100],
                                                        backgroundColor: [
                                                            'rgb(255, 99, 132)',
                                                            'rgb(54, 162, 235)',
                                                            'rgb(255, 205, 86)'
                                                        ],
                                                        hoverOffset: 4
                                                    }]
                                                }
                                            });
                                        });
                                    </script>
                                    <!-- End Pie Chart -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
                            <div class="card">
                                <div class="card-body pt-3">
                                    <!-- Table with stripped rows -->
                                    <table id="dynamic_employee" class="display" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Employee No</th>
                                                <th>Name</th>
                                                <th>Job</th>
                                                <th>Department</th>
                                                <th>Company</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                    <!-- End Table with stripped rows -->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
<script>
    $(document).ready(function() {
        $('#dynamic_employee').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('getEmployees') }}',
            columns: [
                { data: 'SalaryID', name: 'employee_no' },
                { data: 'employeeid', name: 'name' },
                { data: 'CutoffStartDate', name: 'job' },
                { data: 'FixedSalary', name: 'department' },
                { data: 'PagIbigDeduction', name: 'company' },
                { data: 'SssDeduction', name: 'status' },
                { data: 'PhilHealthDeduction', name: 'PhilHealthDeduction' },
                { data: 'action', name: 'action', orderable: false, searchable: false },
            ]
        });
    });

    
</script>