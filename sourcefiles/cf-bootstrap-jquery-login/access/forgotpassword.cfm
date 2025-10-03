<link rel="stylesheet" type="text/css" href="css/access/forgotpassword.css"/>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow card-forgot-password glass-card">
        <div class="card-body">
            <h3 class="card-title text-center mb-3">Recovery Password</h3>
            <form method="post">
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
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" class="form-control" required>
                </div>
                <div class="col-md-6 mb-3">
                <label for="confirmNewPassword">Confirm New Password</label>
                <input type="password" id="confirmNewPassword" name="confirmNewPassword" class="form-control" required>
                </div>
            </div>

            <button type="submit" name="btnRecover" class="btn btn-success w-100">Reset Password</button>
            </form>
        </div>
    </div>
</div>