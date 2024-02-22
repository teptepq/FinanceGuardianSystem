  {{-- <div class="modal fade" id="modal-default">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
        
          <h4 class="modal-title">Log out of Financial Guardian?</h4>
          
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p style>Are you sure you want to log out of Financial Guardian before you confirm your email? Confirming the email on your account ensures you will be able to log in again.&hellip;</p>
        </div>
        <div class="modal-footer justify-content-between">
          <button type="button" class="btn btn-default" data-dismiss="modal"  style="width: 225px;">Confirm account</button>
          <a type="button" style="width: 225px;" class="btn btn-primary"  href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                Log out
                                </a> 
          <!-- <button href="{{ route('logout') }}">Yes</button> -->
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div> --}}



  <div class="modal fade" id="verticalycentered" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <i class="bi bi-box-arrow-right"></i>&nbsp;
          <h5 class="modal-title" style="font-size: 14.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Log out of Financial Guardian?</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <p style="font-size: 12.5px; font-family:-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">Are you sure you want to log out of Financial Guardian before you confirm your email? Confirming the email on your account ensures you will be able to log in again.&hellip;</p>
        </div>
        <div class="modal-footer">
          <button type="button" style="width: 225px;" class="btn btn-secondary" data-bs-dismiss="modal">Confirm account</button>
          <a type="button" style="width: 225px;" class="btn btn-primary" href="{{ route('logout') }}"
          onclick="event.preventDefault();
          document.getElementById('logout-form').submit();">Log out</a>
        </div>
      </div>
    </div>
  </div><!-- End Vertically centered Modal-->