/**
 * Initial function when the document is ready.
 */
$(function () {
    lockGoBackLogin();
});
/**
 * Function to prevent navigating back to the login page or main page.
 **/
function lockGoBackLogin() {
    window.history.pushState(null, "", window.location.href);
    window.onpopstate = function () {
        window.history.go(1);
    };
}