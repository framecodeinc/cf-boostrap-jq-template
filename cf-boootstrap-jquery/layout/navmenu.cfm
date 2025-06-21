<cfscript>
    currentPage = structKeyExists(url, "page") ? url.page : "home";
</cfscript>
<input type="checkbox" title="Navigation menu" class="navbar-toggler"/>

<div id="navMenu" class="col-12 col-md-3 col-lg-2 bg-light p-3 bg-info sidebar-menu nav-scrollable" onclick="document.querySelector('.navbar-toggler').click()">
    <nav>
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link a-header a-navmenu <cfif currentPage EQ 'home'>active</cfif>" href="main.cfm?page=home"><span class="bi bi-house-door-fill-nav-menu" aria-hidden="true"></span> Home</a></li>
            <li class="nav-item"><a class="nav-link a-header a-navmenu <cfif currentPage EQ 'counter'>active</cfif>" href="main.cfm?page=counter"><span class="bi bi-plus-square-fill-nav-menu" aria-hidden="true"></span> Counter</a></li>
            <li class="nav-item"><a class="nav-link a-header a-navmenu <cfif currentPage EQ 'weather'>active</cfif>" href="main.cfm?page=weather"><span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Weather</a></li>
            <li class="nav-item"><a class="nav-link a-header a-navmenu <cfif currentPage EQ 'pagenotfound'>active</cfif>" href="main.cfm?page=pagenotfound"><span class="bi bi-nofound-page-nav-menu" aria-hidden="true"></span> Page not found</a></li>
        </ul>
    </nav>
</div>