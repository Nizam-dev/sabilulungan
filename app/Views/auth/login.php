<?= $this->extend('template/master') ?>
<?= $this->section('content') ?>
<div role="main" class="content-main" style="margin:120px 0 50px">

    <div class="wrapper-half">
        <h1 class="page-title page-title-border">Sign in</h1>

        <form class="form-global" method="post" action="<?= base_url('login') ?>">
            <fieldset>
                <div class="control-group">
                    <label class="control-label" for="">Email</label>
                    <div class="controls">
                        <input type="text" name="email" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Password</label>
                    <div class="controls">
                        <input type="password" name="password" required>
                    </div>
                </div>
                <div class="control-actions clearfix">
                    <button class="btn-red btn-plain btn" type="submit">Masuk</button>
                    <a class="btn-black btn-plain btn" href="<?= base_url('register') ?>">Daftar</a>
                </div>
            </fieldset>
        </form>
        <!-- form-register -->
    </div>
    </div>

<?= $this->endSection() ?>
