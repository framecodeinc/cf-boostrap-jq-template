/**
 * Initial function when the document is ready.
 */
$(function () {
    showMessageModal(onRedirectToLogin, "Session finished. You will be redirected to the login page.", "Session finished", MessageType.INFO, false);
});
/**
 * Redirect to the login page.
 */
function onRedirectToLogin() {
    //window.location.href = "index.cfm";
    window.location.replace("index.cfm");
}