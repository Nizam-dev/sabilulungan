<?= $this->extend('template/master') ?>

<?= $this->section('content') ?>
<div class="register-page wrapper-half mt-120">
        <h1 class="page-title page-title-border">Lapor</h1>
        <form class="form-global" action="<?= base_url('lapor/send') ?>" method="post">
            <fieldset>
                <div class="control-group">
                    <label class="control-label" for="">Nama</label>
                    <div class="controls">
                        <input type="text" name="name" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Email</label>
                    <div class="controls">
                        <input type="email" name="email" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Subjek</label>
                    <div class="controls">
                        <input type="text" name="subject" required>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="">Pesan</label>
                    <div class="controls">
                        <textarea name="message" required></textarea>
                    </div>
                </div>
                <div class="control-actions clearfix">
                    <button class="btn-red btn-plain btn" type="submit">Kirim</button>
                </div>
            </fieldset>
        </form>                    
        <p><b>Dinas Pengelolaan Keuangan dan Aset Daerah (DPKAD) Kota Bandung</b></p>
        <p>Jl. Wastukencana No. 2 Bandung</p>
        <p>E-mail: sabilulungan.bandung@gmail.com</p>
    </div>

<?= $this->endSection() ?>