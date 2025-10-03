<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title><cfoutput>#pageTitle#</cfoutput></title>
        <link rel="icon" type="image/png" href="images/cflogo.ico" />
        <link rel="stylesheet" type="text/css" href="css/layout/loginlayout.css"/>
        <!--- <link rel="stylesheet" type="text/css" href="css/loginl.css"/> --->
        <!--- Bootstrap 5 CSS --->
        <link rel="stylesheet" href="bootstrap-5.3.6-dist/css/bootstrap.min.css"/>
        <!--- JQuery --->
        <script type="text/javascript" language="javascript" src="jquery/jquery-3.7.1.min.js"></script>
    </head>
    <body class="d-flex justify-content-center align-items-center">
        <!--- Main Content --->
        <cfinclude template="#contentPage#">
        <!--- Bootstrap JS Bundle --->
    <script src="bootstrap-5.3.6-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<!--- Prevent navigating back to the main page. --->
<script type="text/javascript" language="javascript" src="./js/layout/layoutbase.js"></script>