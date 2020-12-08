
<?= $this->include('login_header') ?>
 <body>
<div class="container">
    <div class="row">
        <div class="col">
        <h1 class="m-5" align="center">Sign In</h1>
        <table class="tabelprofil">
        <tbody>
        <tr>
        <th>
            <div>
            <p class="mb-4"></p>
            </div>
            <div class="card " style="background-color: rgb(173, 216, 230);">
            <div class="card-body login-card-body ">
            <?php if(session()->getFlashdata('msg')):?>
                <div class="alert alert-danger"><?= session()->getFlashdata('msg') ?></div>
            <?php endif;?>
            <form action="/login/auth" method="post">
                <div class="mb-3">
                    <label for="InputForEmail" class="form-label">Email address</label>
                    <input type="email" name="email" class="form-control" id="InputForEmail" value="<?= set_value('email') ?>">
                </div>
                <div class="mb-3">
                    <label for="InputForPassword" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="InputForPassword">
                </div>
                <p class="mb-1">
                </p>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
            </div>
            </div>
        </th>
        </tr>
        </tbody>
        </table>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<?= $this->include('login_footer') ?>