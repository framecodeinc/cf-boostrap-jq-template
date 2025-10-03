<cfscript>
    page = structKeyExists(url, "page") ? url.page : "login";
    allowedPages = ["login", "register", "forgotpassword", "logout"];
    contentPage = arrayContains(allowedPages, page) ? "../access/#page#.cfm" : "../layout/error.cfm";
    if(page NEQ "forgotpassword") {
        pageTitle = UCase(Left(page, 1)) & LCase(Mid(page, 2, Len(page)));
    } else {
        pageTitle = "Recovery Password";
    }
</cfscript>
<cfinclude template="layout/loginlayout.cfm">