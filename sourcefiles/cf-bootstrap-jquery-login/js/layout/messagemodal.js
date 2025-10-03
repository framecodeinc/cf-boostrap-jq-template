/**
* Defines an enumeration for message types.
* @enum {number}
*/
var MessageType = {
  /**
   * No specific message type.
   */
  NONE: 0,
  /**
   * Error message type.
   */
  ERROR: 1,
  /**
   * Informational message type.
   */
  INFO: 2,
  /**
   * Warning message type.
   */
  WARNING: 3,
  /**
   * Question message type.
   */
  QUESTION: 4
};

/**
 * Initial function when the document is ready.
 */
$(function () {
      $("#messageModal").modal({
          show: false,
          backdrop: 'static'
      });
});
/**
* Function to show a message modal with a custom message.
* @param {function} acceptCallback - Callback function to execute when the accept button is clicked.
* @param {string} message - Message to display in the modal.
* @param {string} title - Title of the modal.
* @param {MessageType} messageType - Type of message (ERROR, INFO, WARNING, QUESTION). By default, MessageType is set to NONE.
* @param {boolean} showCloseButton - Indicates whether the close button is displayed. The default value is true.
*/
function showMessageModal(acceptCallback, message, title, messageType = MessageType.NONE, showCloseButton = true) {
  // Show or hide the close button based on the parameter.
  if(showCloseButton) {
    $("#messageModal .btn-close").show();
  } else {
    $("#messageModal .btn-close").hide();
  }
  $("#iconMessage").show();
  $("#btnAccept").text("Accept");
  $("#btnCancel").text("Cancel");
  $("#btnCancel").hide();
  // Set dynamic icon.
  switch (messageType) {
    case MessageType.ERROR:
      $("#iconMessage").attr("class", "bi bi-x-circle-fill text-danger");
      break;
    case MessageType.INFO:
      $("#iconMessage").attr("class", "bi bi-info-circle-fill text-info");
      break;
    case MessageType.WARNING:
      $("#iconMessage").attr("class", "bi bi-exclamation-triangle-fill text-warning");
      break;
    case MessageType.QUESTION:
      $("#iconMessage").attr("class", "bi bi-question-circle-fill text-primary");
      $("#btnAccept").text("Yes");
      $("#btnCancel").text("No");
      $("#btnCancel").show();
      break;
    case MessageType.NONE:
    default:
      $("#iconMessage").hide();
      break;
  }
  
  // Set dynamic title.
  $("#titleLabel").text(title);

  // Set dynamic content.
  $("#divMessage").text(message);

  // Show modal with Bootstrap 5
  $("#messageModal").modal("show");

  // Clear previous click handlers to avoid multiple bindings.
  $('#btnAccept').off('click');

  // Accept button click handler.
  $('#btnAccept').on('click', function () {
    if (typeof acceptCallback === "function") acceptCallback();
    $("#messageModal").hide();
  });

  // Cancel button click handler.
  $('#btnCancel').off('click').on('click', function () {
    $("#messageModal").hide();
  });
}