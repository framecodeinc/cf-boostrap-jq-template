<cfset title = "My ColdFusion App">
<cfset page = url.page ?: "home">
<cfset allowedPages = ["home", "counter", "weather"]>
<cfset contentPage = arrayContains(allowedPages, page) ? "../pages/#page#.cfm" : "../layout/error.cfm">
<cfset pageTitle = UCase(Left(page, 1)) & LCase(Mid(page, 2, Len(page)))>
<!--- <cfscript>
    page = structKeyExists(url, "page") ? url.page : "home";
    allowedPages = ["home", "about"];
    contentPage = arrayContains(allowedPages, page) ? "../#page#.cfm" : "error.cfm";
</cfscript> --->
<cfinclude template="layout/mainlayout.cfm">