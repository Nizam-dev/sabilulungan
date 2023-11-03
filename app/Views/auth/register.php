<?= $this->extend('template/master') ?>
<?= $this->section('content') ?>

<div role="main" class="content-main" style="margin:120px 0 50px">
    <div class="wrapper-half">
        <h1 class="page-title page-title-border">Sign in</h1>
        <?php
        if(isset($rules)){
            echo '<div class="alert-bar alert-bar-failed" style="width:100%">'.$rules.'</div>';
        }      
        ?>
        <form class="form-global" method="post" action="<?= base_url('register') ?>">
            <fieldset>

                <div class="control-group">
                    <label class="control-label" for="">Email</label>
                    <div class="controls">
                        <input type="email" name="email" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Password</label>
                    <div class="controls">
                        <input type="password" name="password" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Ulangi Password</label>
                    <div class="controls">
                        <input type="password" name="confirm_password" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Nama (individu atau organisasi)</label>
                    <div class="controls">
                        <input type="text" name="name" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Alamat</label>
                    <div class="controls">
                        <textarea name="address" required></textarea>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Nomor Telepon</label>
                    <div class="controls">
                        <input type="text" name="phone" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Nomor KTP</label>
                    <div class="controls">
                        <input type="text" name="ktp" required>
                    </div>
                </div>

                <div class="control-actions clearfix">
                    <button class="btn-red btn-plain btn" type="submit">Daftar</button>
                    <!-- <button class="btn-black btn-plain btn" type="reset">Reset</button> -->
                </div>
            </fieldset>
        </form>

        <!-- form-register -->
    </div>
</div>

<?= $this->endSection() ?>