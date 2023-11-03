<?= $this->extend('template/master') ?>

<?= $this->section('content') ?>

<div class="wrapper clearfix mt-120">
    <div class="primary">
        <h1 class="page-title page-title-border">Laporan</h1>
        <ul class="project-list-wrapper list-nostyle clearfix" style="width: 1024px;">

            <?php foreach($data as $no=>$d){ ?>

            <li class="clearfix" id="<?=$no?>" style="width:320px;min-height:170px">
                <a href="<?= base_url('public/media/laporan/'.$d->file) ?>">
                    <div class="project-list-text" style="width:300px;color:#000">
                        <h3 style="color:#0093bb">Tahun <?=$d->tahun?></h3>
                        <p class="author"><span class="label">Anggaran:</span> Rp.
                            <?=number_format($d->anggaran,0,",",".") ?>',-</p>
                        <p class="author"><span class="label">Realisasi (Rp):</span> Rp.
                            <?=number_format($d->realisasi_rp,0,",",".") ?>',-</p>
                        <p class="author"><span class="label">Realisasi (%):</span> Rp.
                            <?=number_format($d->realisasi_persen,0,",",".") ?>',-</p>
                        <p class="author"><span class="label">Jumlah Penerima yang Mencairkan:</span>
                            <?=$d->penerima_cair ?></p>
                        <p class="author"><span class="label">Jumlah Penerima yang Menyampaikan Laporan:</span>
                            <?= $d->penerima_lapor ?></p>
                        <p class="author"><span class="label">Nilai yang Dilaporkan:</span> Rp.
                            <?=number_format($d->nilai_lapor,0,",",".") ?>',-</p>
                    </div>
                </a>
            </li>

            <?php 
                if($no / 3 == 0){
                    echo '</ul><ul class="project-list-wrapper list-nostyle clearfix" style="width: 1024px;">';
                }
            } ?>

        </ul>
    </div>
</div>

<?= $this->endSection() ?>