<?= $this->extend('template/master') ?>
<?= $this->section('css') ?>

<?= $this->endSection() ?>
<?= $this->section('content') ?>

<div class="about-page wrapper mt-120">
        <h1 class="page-title page-title-border">Tentang Sabilulungan</h1>
        <div class="col-wrapper clearfix">
            <div class="col">
                <?php echo $data[0]->content ?>
            </div>
            <div class="col">
                <img src="<?php echo base_url('public/media/cms/'.$data[1]->content) ?>" alt="">
                <img src="<?php echo base_url('public/media/cms/'.$data[2]->content) ?>" alt="">
            </div>
        </div>
    </div>
    <!-- wrapper -->
    <div class="project-steps project-steps-alt">
        <div class="wrapper">
            <h2>Tahapan</h2>
            <ul class="project-steps-list list-nostyle clearfix">
                <li class="divider-isempty divider"></li>
                <li>Pendaftaran Proposal Hibah Bansos</li>
                <li class="divider"></li>
                <li>Pemeriksaan Kelengkapan Dokumen Oleh TU</li>
                <li class="divider"></li>
                <li>Pemeriksaan Oleh Walikota</li>
                <li class="divider"></li>
                <li>Klasifikasi Sesuai SKPD Oleh Tim Pertimbangan</li>
            </ul>
            <ul class="project-steps-list list-nostyle clearfix">
                <li class="divider"></li>
                <li>Rekomendasi Dana Oleh SKPD</li>
                <li class="divider"></li>
                <li>Verifikasi Proposal Oleh Tim Pertimbangan</li>
                <li class="divider"></li>
                <li>Verifikasi Proposal Oleh TAPD</li>
                <li class="divider"></li>
                <li>Persetujuan Walikota</li>
            </ul>
            <ul class="project-steps-list list-nostyle clearfix">
                <li class="divider"></li>
                <li>Dana Tersalurkan</li>
                <li class="divider"></li>
                <li>Proyek Hibah Bansos Berjalan</li>
            </ul>
        </div>
    </div>

<?= $this->endSection() ?>