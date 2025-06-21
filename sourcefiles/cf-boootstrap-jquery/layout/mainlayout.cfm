<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title><cfoutput>#pageTitle#</cfoutput></title>
    <link rel="icon" type="image/png" href="images/cflogo.ico" />
    <link rel="stylesheet" type="text/css" href="css/mainlayout.css"/>
    <link rel="stylesheet" type="text/css" href="css/navmenu.css"/>
    <!--- Bootstrap 5 CSS --->
    <link rel="stylesheet" href="bootstrap-5.3.6-dist/css/bootstrap.min.css"/>
     <!--- JQuery --->
    <script type="text/javascript" language="javascript" src="jquery/jquery-3.7.1.min.js"></script>
</head>
<body class="d-flex flex-column min-vh-100">
  
    <!--- Header --->
    <header class="text-white p-3 main-header">
      <div class="d-flex">
        <div class="p-0 flex-grow-1">
          <h4 class="m-0"><cfoutput><a class="navbar-brand" href="main.cfm?page=home">#title#</cfoutput></a></h4>
        </div>
        <div class="p-0 about">
          <a href="https://helpx.adobe.com/coldfusion/user-guide.html" class="a-header" target="_blank">About</a>
        </div>
      </div>
    </header>
    
    <!--- Content Area: Sidebar + Main --->
    <div class="container-fluid flex-grow-1">
    
      <div class="row">
        <!--- Sidebar Menu --->        
        <cfinclude template="navmenu.cfm">
       
        <div class="col-12 col-md-9 col-lg-10 p-4">
          <!--- Main Content --->
          <main>
            <cfinclude template="#contentPage#">
          </main>
        </div>
      </div>
    </div>

    <!--- Footer --->
    <footer class="bg-dark text-white text-center p-3 mt-auto">
      <cfset today = Now()>
      &copy; <cfoutput> #DateFormat(today, "yyyy")# My Company - #title#</cfoutput>
    </footer>
  <!--- Bootstrap JS Bundle --->
  <script src="bootstrap-5.3.6-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>