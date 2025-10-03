<cfset user="">
<cfif structKeyExists(form, "username")>
    <cfif form.username NEQ "admin">
        <cfset errorMsg="Invalid username.">
    <cfelseif form.password NEQ "12345">
        <cfset errorMsg="Invalid password.">
        <cfset user=form.username>
    <cfelse>
        <cfset session.userId=form.username> 
        <cflocation url="main.cfm" addtoken="false">
    </cfif>
</cfif>
<link rel="stylesheet" type="text/css" href="css/access/login.css"/>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow card-login glass-card">
        <div class="card-body">
            <h3 class="card-title text-center mb-3">Login</h3>
            <cfif isDefined("errorMsg")>
                <div class="alert alert-danger"><cfoutput>#errorMsg#</cfoutput></div>
            </cfif>
            <form method="post">
                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input type="text" name="username" class="form-control" value="<cfoutput>#user#</cfoutput>" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <button type="submit" name="btnLogin" class="btn btn-primary w-100">Login</button>
            </form>
            <div class="mt-3 text-center">
                <a href="index.cfm?page=register">Register</a> | 
                <a href="index.cfm?page=forgotpassword">Forgot Password?</a>
            </div>
        </div>
    </div>
</div>