
@if(Auth::user()->isNotice == 0)
          
          <div class="col-12">
            <div class="alert alert-primary alert-dismissible fade show" role="alert">
              <label class="alert-heading" style="text-transform: Uppercase; font-size: 16px;">Announcement</label>
              <hr>
              <p style="font-size: 12.5px; display: inline;">
                Dear valued users,<br><br>
                We would like to inform you that our system will undergo essential maintenance to ensure optimal performance and reliability. During this scheduled maintenance period, there may be temporary interruptions to our services.
                We apologize for any inconvenience this may cause and assure you that our team is working diligently to minimize the duration of the maintenance window. Our goal is to swiftly complete these upgrades to enhance your experience with our platform.
                We appreciate your patience and understanding. Thank you for your continued support as we strive to provide you with the best service possible.
                <br>
                <br>
                Warm regards,
                <br>
                Team Financial Guardian
              </p>
              <hr>
              <p class="mb-0" style="text-transform: capitalize; font-size: 12.5px;">Date: {{ date("F d, Y") }}</p>
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" id="closed"></button>
            </div>
          </div>
        @endif