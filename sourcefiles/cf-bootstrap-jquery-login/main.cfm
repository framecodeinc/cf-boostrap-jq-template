<cfset title = "My ColdFusion App">
<cfset page = url.page ?: "home">
<cfset allowedPages = ["home", "counter", "weather"]>
<cfset contentPage = arrayContains(allowedPages, page) ? "../pages/#page#.cfm" : "../layout/error.cfm">
<cfset pageTitle = UCase(Left(page, 1)) & LCase(Mid(page, 2, Len(page)))>
<cfinclude template="layout/mainlayout.cfm">