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
                            <a class="link-green" href="">Tentang</a>
                        </li>
                        <li>
                            <a class="link-blue" href="">Proposal Hibah</a>
                        </li>
                </nav>
                <!-- nav-main -->
                <div class="nav-user list-nostyle clearfix">
                    <form class="form-search-header" action="" method="post">
                        <input type="text" name="keyword" placeholder="Cari">
                        <button name="search" class="btn-search btn-ir" style="border:none"
                            type="submit">Search</button>
                    </form>
                    <a class="logo-bandung" target="_blank" href="https://www.mempawahkab.go.id/">
                        <img src="<?= base_url('public/template/img/logo-mempawah.png') ?>" alt="">
                    </a>

                    <a class="logo-bandung" href="" style="margin-top:3px;margin-right:10px" alt="Sign In">
                        <img src="<?= base_url('public/template/img/btn-user.png') ?>">
                    </a>

                </div>
                <!-- nav-user -->
            </div>
            <!-- wrapper -->
            <div class="nav-user-panel nav-sub-panel" style="display: none;">
                <div class="wrapper clearfix">
                    <form class="form-signin-header" action="<?php echo site_url('process/login') ?>">
                        <input type="text" name="uname" placeholder="Username">
                        <input type="password" name="pswd" placeholder="Password">
                        <button class="btn-login btn-red btn-plain btn" type="submit">Masuk</button>
                        <span class="link-register">/ <a href="<?php echo site_url('daftar') ?>">Daftar</a></span>
                    </form>

                </div>

            </div>
        </header>
