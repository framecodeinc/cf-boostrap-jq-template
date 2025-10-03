<!--- Message Modal --->
<div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="titleLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title" id="titleLabel">Title Message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <div class="modal-body">
        <div class="d-flex flex-row align-items-center">
          <div class="p-2" id="divIconMessage">
              <i id="iconMessage" class="bi bi-question-circle" style="font-size: 2rem; color: #0d6efd;"></i>
          </div>
          <div id="divMessage" class="p-2 flex-grow-1 text-start" 
                style="word-wrap: break-word; 
                word-break: normal;
                white-space: pre-wrap; 
                text-align: start; 
                overflow-y: auto;">
              Are you sure you want to continue?
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button id="btnCancel" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button id="btnAccept" type="button" class="btn btn-primary">Accept</button>
      </div>

    </div>
  </div>
</div>
<!--- Include custom JS for the messagemodal.cfm --->
<script type="text/javascript" language="javascript" src="./js/layout/messagemodal.js"></script>