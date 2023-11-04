<noscript>
    <p align="center">This application rich of javascript, please enabled your JavaScript browser</p>
</noscript>
<div id="page-container">
    <table id="ifbox" border="0" cellpadding="0" cellspacing="0">
        <tr class="ifheader">
            <td class="ifleft"></td>
            <td class="ifmiddle"></td>
            <td class="ifright"></td>
        </tr>
        <tr class="ifbody">
            <td colspan="3" class="ifmiddle">
                <div id="ifpopcontent"></div>
            </td>
        </tr>
        <tr class="iffooter">
            <td class="ifleft"></td>
            <td class="ifmiddle"></td>
            <td class="ifright"></td>
        </tr>
    </table>


    <header role="banner" class="header-main clearfix">
        <div class="wrapper">
            <a class="logo" href="<?= base_url('') ?>">
                <img src="<?= base_url('public/template/img/logo.png') ?>" alt="" height="36" width="180">
            </a>
            <nav role="navigation" class="nav-main">
                <ul class="clearfix list-nostyle">
                    <li>
                        <a class="link-green" href="<?= base_url('tentang') ?>">Tentang</a>
                    </li>
                    <li>
                        <a class="link-blue" href="<?= base_url('proposal') ?>">Proposal Hibah</a>
                    </li>
                    <!-- Guest -->
                    <?php if(session()->name ){ 
                             if(session()->role_id==6) echo '<li><a class="link-purple" href="'.base_url('hibah').'">Mendaftar Hibah Bansos</a></li><li><a class="link-purple" href="'.base_url('lpj').'">LPJ</a></li> ';
                                elseif(session()->role_id==5) echo '<li><a class="link-purple" href="'.base_url('hibah').'">Daftar</a></li><li><a class="link-purple" href="'.base_url('report').'">Pengecekan Berkas</a></li> ';
                                elseif(session()->role_id==4) echo '<li><a class="link-purple" href="'.base_url('report').'">Pemilihan SKPD dan Verifikasi</a></li> ';
                                elseif(session()->role_id==3) echo '<li><a class="link-purple" href="'.base_url('report').'">Pemberian Rekomendasi</a></li> ';
                                elseif(session()->role_id==2) echo '<li><a class="link-purple" href="'.base_url('report').'">Verifikasi</a></li><li><a class="link-purple" href="'.base_url('tapd/generate').'">Generate</a></li> ';
                                elseif(session()->role_id==1) echo '<li><a class="link-purple" href="'.base_url('report').'">Pemeriksaan Proposal</a></li> ';
                                elseif(session()->role_id==7) echo '<li><a class="link-purple" href="'.base_url('hibah').'">Daftar Hibah</a></li><li><a class="link-purple" href="'.base_url('report').'">Pemeriksaan</a></li> ';
                                elseif(session()->role_id==8) echo '<li><a class="link-purple" href="'.base_url('input').'">Mendaftar Hibah Masuk</a></li> ';
                                elseif(session()->role_id==9) echo '<li><a class="link-purple" href="'.base_url('report').'">Koreksi</a></li><li><a class="link-purple" href="'.base_url('cms').'">CMS</a></li><li><a class="link-purple" href="'.base_url('realisasi').'">Laporan</a></li> ';
                     } else { ?>
                    <li>
                        <a class="link-purple" href="<?= base_url('peraturan') ?>">Peraturan</a>
                    </li>
                    <li>
                        <a class="link-green" href="<?= base_url('lapor') ?>">Lapor</a>
                    </li>
                    <li>
                        <a class="link-blue" href="<?= base_url('listlaporan') ?>">Laporan</a>
                    </li>
                    <li>
                        <a class="link-purple" href="<?= base_url('pengumuman') ?>">Pengumuman</a>
                    </li>
                    <?php } ?>
                    <!-- Guest -->
            </nav>
            <!-- nav-main -->
            <div class="nav-user list-nostyle clearfix">
                <form class="form-search-header" action="" method="post">
                    <input type="text" name="keyword" placeholder="Cari">
                    <button name="search" class="btn-search btn-ir" style="border:none" type="submit">Search</button>
                </form>
                <a class="logo-bandung" target="_blank" href="https://www.mempawahkab.go.id/">
                    <img src="<?= base_url('public/media/logo/logo-bandung.png') ?>" alt="">
                </a>



                <?php if(session()->name){ ?>
                <a class="logo-bandung" href="<?= base_url('logout') ?>" style="margin-top:3px;margin-right:10px"
                    onclick="return confirm('Apakah Anda Yakin Akan Keluar ?')" alt="Sign Out">
                    <img src="<?= base_url('public/template/img/btn-user.png') ?>" alt="">
                </a>
                <?php  }else{ ?>
                <a class="logo-bandung" href="<?= base_url('login') ?>" style="margin-top:3px;margin-right:10px"
                    alt="Sign In">
                    <img src="<?= base_url('public/template/img/btn-user.png') ?>">
                </a>
                <?php } ?>
            </div>
            <!-- nav-user -->
        </div>

    </header>