@if(Auth::user()->usertype == '3')


  <div class="modal fade" id="BuylargeModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <i class="bi bi-credit-card"></i>
          <h5 class="modal-title"></h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          Non omnis incidunt qui sed occaecati magni asperiores est mollitia. Soluta at et reprehenderit. Placeat autem numquam et fuga numquam. Tempora in facere consequatur sit dolor ipsum. Consequatur nemo amet incidunt est facilis. Dolorem neque recusandae quo sit molestias sint dignissimos.
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div><!-- End Large Modal-->




    <div class="modal fade" id="ExtralargeModalPayment" tabindex="-1">
      <div class="modal-dialog modal-xl">
        <div class="modal-content">
          <div class="modal-header">
            <i class="bi bi-credit-card-2-back"></i>
            {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <section class="section error-404 min-vh-100 d-flex flex-column align-items-center justify-content-center">
              <h1>404</h1>
              <h2>The page you are looking for doesn't exist.</h2>
              <img src="/assets/img/not-found.svg" class="img-fluid py-5" alt="Page Not Found">
            </section>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
          </div>
        </div>
      </div>
    </div><!-- End Extra Large Modal-->

    <div class="modal fade" id="ExtralargeModalTransact" tabindex="-1">
      <div class="modal-dialog modal-xl">
        <div class="modal-content" data-bs-toggle="modal" data-bs-target="#ExtralargeModalPayment">
          <div class="modal-header">
            <i class="bi bi-clock-history"></i>
            {{-- <h5 class="modal-title">Extra Large Modal</h5> --}}
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <?php date_default_timezone_set('Asia/Manila');
            $currentDate = date("M d, Y, h:i A"); ?>
            <div class="alert alert-primary alert-dismissible fade show" role="alert" >
              <div class="row" >
                <div class="col-lg-6">
                  <h4 class="alert-heading" style="font-size: 13.5px;">Online Payment - Web Pay</h4>
                </div>
                <div class="col-lg-6" >
                  <h5 class="alert-heading" style="float: right; font-size: 13.5px;">-1624.0</h5>
                </div>
              </div>
              
              {{-- <p>Et suscipit deserunt earum itaque dignissimos recusandae dolorem qui. Molestiae rerum perferendis laborum. Occaecati illo at laboriosam rem molestiae sint.</p> --}}
              <hr>
              <p class="mb-0" style="font-size: 13.5px;">{{ $currentDate }}</p>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            {{-- <section class="section error-404 min-vh-100 d-flex flex-column align-items-center justify-content-center">
              <h1>404</h1>
              <h2>The page you are looking for doesn't exist.</h2>
              <img src="/assets/img/not-found.svg" class="img-fluid py-5" alt="Page Not Found">
            </section> --}}
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            {{-- <button type="button" class="btn btn-primary">Save changes</button> --}}
          </div>
        </div>
      </div>
    </div><!-- End Extra Large Modal-->
  @endif

