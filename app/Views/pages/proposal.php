<?= $this->extend('template/master') ?>
<?= $this->section('css') ?>

<?= $this->endSection() ?>
<?= $this->section('content') ?>

<div class="wrapper clearfix mt-120">
    <aside class="sidebar">
        <div class="form-search-wrapper">
            <form class="form-search form-search-small clearfix" action="<?php echo base_url('proposal') ?>"
                method="post">
                <input type="text" name="keyword" placeholder="Cari Proposal">
                <button name="search" class="btn-ir" type="submit">Search</button>
            </form>
        </div>
        <div class="widget-side">
            <h2>Kategori hibah bansos</h2>
            <ul class="category-list list-nostyle">
                <?php
                foreach($kategori as $k){
                    echo '<li><a href="'.base_url('proposal/'.$k->id).'">'.$k->name.'</a></li>';
                }
                ?>
            </ul>
        </div>
        <div class="widget-side">
            <h2>Status hibah bansos</h2>
            <ul class="category-list list-nostyle">
                <li><a href="<?php echo base_url('proposal/0/1'); ?>">Pemeriksaan Kelengkapan oleh Bagian TU</a>
                </li>
                <li><a href="<?php echo base_url('proposal/0/2'); ?>">Pemeriksaan oleh Walikota</a></li>
                <li><a href="<?php echo base_url('proposal/0/3'); ?>">Klasifikasi sesuai SKPD oleh Tim
                        Pertimbangan</a></li>
                <li><a href="<?php echo base_url('proposal/0/4'); ?>">Rekomendasi Dana oleh SKPD</a></li>
                <li><a href="<?php echo base_url('proposal/0/5'); ?>">Verifikasi Proposal oleh Tim Pertimbangan</a>
                </li>
                <li><a href="<?php echo base_url('proposal/0/6'); ?>">Verifikasi Proposal oleh TAPD</a></li>
                <li><a href="<?php echo base_url('proposal/0/7'); ?>">Proyek Berjalan</a></li>
            </ul>
        </div>

        <div class="widget-side nav-filter">
            <h2>Urut Berdasarkan</h2>
            <ul class="category-list list-nostyle">
                <li><a href="<?php echo base_url('proposal/0/0/1'); ?>">Terbaru</a></li>
                <li><a href="<?php echo base_url('proposal/0/0/2'); ?>">Terbesar</a></li>
            </ul>
        </div>

        <div class="widget-side nav-filter">
            <h2>Tahun</h2>
            <ul class="category-list list-nostyle">
                <?php
                foreach($tahun as $t){
                    echo '<li><a href="'.base_url('proposal/0/0/0/'.$t->tahun).'">'.$t->tahun.'</a></li>';
                }
                ?>
            </ul>
        </div>
    </aside>

    <div class="primary">
            <ul class="nav-project list-nostyle clearfix">
                <li class="active">
                    <a class="btn" href="<?php echo base_url('proposal') ?>">Semua</a>
                </li>
                <?php
                // Role 7
                ?>
            </ul>
            <ul class="project-list-wrapper list-nostyle clearfix">
                <?php
                    $i=0;
                    $role = array(5, 7, 8);
                    foreach($proposal as $list){
                        echo '<li class="clearfix" id="'.$i.'">
                                <div class="project-list-image">';
                                    if(isset($list->image[0]->path)) echo '<img src="'.base_url('public/media/proposal_foto/'.$list->image[0]->path).'">';
                                echo '</div>
                                <div class="project-list-text">
                                    <ul class="project-list-progress list-nostyle clearfix">
                                        <li class="step-1 '; if(isset($list->proses[0])==1) echo 'done'; elseif(isset($list->proses[0])==2) echo 'failed'; echo '">1</li>
                                        <li class="step-2 '; if(isset($list->proses[1])==1) echo 'done'; elseif(isset($list->proses[1])==2) echo 'failed'; echo '">2</li>
                                        <li class="step-3 '; if(isset($list->proses[2])==1) echo 'done'; elseif(isset($list->proses[2])==2) echo 'failed'; echo '">3</li>
                                        <li class="step-4 '; if(isset($list->proses[3])==1) echo 'done'; elseif(isset($list->proses[3])==2) echo 'failed'; echo '">4</li>
                                        <li class="step-5 '; if(isset($list->proses[4])==1) echo 'done'; elseif(isset($list->proses[4])==2) echo 'failed'; echo '">5</li>
                                        <li class="step-6 '; if(isset($list->proses[5])==1) echo 'done'; elseif(isset($list->proses[5])==2) echo 'failed'; echo '">6</li>
                                        <li class="step-7 '; if(isset($list->proses[6])==1) echo 'done'; elseif(isset($list->proses[6])==2) echo 'failed'; echo '">7</li>
                                    </ul>
                                    <h3><a href="'.site_url('detail/'.$list->id).'">'.$list->judul.'</a></h3>
                                    <p class="author"><span class="label">Tanggal Masuk Proposal:</span> '.date('M d, Y', strtotime($list->created_at)).'</p>
                                    <p class="author"><span class="label">Oleh:</span> ';
                                    if(isset($list->user)) echo $list->user;
                                    elseif(in_array($list->role_id, $role)) echo $list->oleh;
                                    else echo $list->name;
                                    echo '</p>
                                    <p class="status"><span class="label">Tahapan:</span> ';
                                    if(isset($list->tahap)) echo $list->tahap; else echo 'Proyek Terdaftar';
                                    echo '</p>
                                    <p class="category"><span class="label">Kategori:</span> '; if($list->skpd) echo $list->skpd; else echo '-'; echo '</p>
                                    <p>'.$list->konten; if($list->length >= 150) echo '...'; echo '</p>
                                    <p class="author"><span class="label">Nilai yang Diajukan:</span> Rp. '.number_format($list->mohon,0,",",".").',-</p>
                                    <p class="status"><span class="label">Nilai yang Disetujui:</span> '; if(isset($list->nilai[0]->value)) echo 'Rp. '.number_format($list->nilai[0]->value,0,",",".").',-'; else echo '-'; echo '</p>
                                </div>
                            </li>'; 
                        $i++;
                        if($i==2){
                            echo '</ul><ul class="project-list-wrapper list-nostyle clearfix">';
                            $i = 0;
                        }
                    }                    
                ?>
            </ul>
            <!-- project-list-wrapper -->
           
        </div>




</div>

<?= $this->endSection() ?>