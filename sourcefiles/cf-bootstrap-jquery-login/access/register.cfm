<link rel="stylesheet" type="text/css" href="css/access/register.css"/>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow card-register glass-card">
        <div class="card-body">
            <h3 class="card-title text-center mb-3">Register</h3>
            <form method="post">
                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label for="names">Names</label>
                    <input type="text" id="names" name="names" class="form-control" required>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" class="form-control" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="confirmEmail">Confirm Email</label>
                    <input type="email" id="confirmEmail" name="confirmEmail" class="form-control" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
                    </div>
                </div>

                <button type="submit" name="btnRegister" class="btn btn-primary w-100">Register</button>
            </form>
        </div>
    </div>
</div>