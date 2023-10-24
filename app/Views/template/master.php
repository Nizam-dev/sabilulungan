<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    
    <link rel="icon" type="image/png" href="<?php echo base_url('public/template/img/favicon.png') ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/template/css/main.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('public/template/css/custom.css') ?>">


    <script>var HOST = "<?php echo base_url() ?>";</script>    
    <script type="text/javascript">var base_urls = "<?php echo base_url() ?>", site_urls = "<?php echo site_url() ?>";</script>    

    <script src="<?php echo base_url('static/js/vendor/modernizr-2.6.2.min.js') ?>"></script>
</head>
<body class="home">
<noscript>
    <p align="center">This application rich of javascript, please enabled your JavaScript browser</p>
</noscript>
<div id="page-container">
<table id="ifbox" border="0" cellpadding="0" cellspacing="0">
    <tr class="ifheader"><td class="ifleft"></td><td class="ifmiddle"></td><td class="ifright"></td></tr>
    <tr class="ifbody"><td colspan="3" class="ifmiddle"><div id="ifpopcontent"></div></td></tr>
    <tr class="iffooter"><td class="ifleft"></td><td class="ifmiddle"></td><td class="ifright"></td></tr>
</table>


<header role="banner" class="header-main clearfix">
    <div class="wrapper">
        <a class="logo" href="<?= base_url('') ?>">
            <img src="<?= base_url('') ?>" alt="" height="36" width="180">
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
                <button name="search" class="btn-search btn-ir" style="border:none" type="submit">Search</button>
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

<div role="main" class="content-main">
    <?= $this->renderSection('content') ?>
</div>


<footer role="contentinfo" class="footer-main">
    <div class="wrapper clearfix">
        <a class="logo-footer" href="<?php echo base_url() ?>">
            <img src="<?php echo base_url('public/template/img/logo-footer.png') ?>" alt="">
        </a>
        <ul class="social-links list-nostyle clearfix">
            <li>
                <a class="btn-facebook btn-ir" href="#">Facebook</a>
            </li>
            <li>
                <a class="btn-twitter btn-ir" href="#">Twitter</a>
            </li>
        </ul>
        <!-- social-links -->
        <p class="copyright">Pemerintah Kota Mempawah © 2018</p>

        <!-- Start of StatCounter Code for Default Guide -->
        <div style="text-align:center;margin-top:12px;color:#FFF;font-size:14px">
            Pengunjung :
            <script type="text/javascript">
            var sc_project=10741566; 
            var sc_invisible=0; 
            var sc_security="2e35f489"; 
            var scJsHost = (("https:" == document.location.protocol) ?
            "https://secure." : "http://www.");
            document.write("<sc"+"ript type='text/javascript' src='" +
            scJsHost+
            "statcounter.com/counter/counter.js'></"+"script>");
            </script>
            <noscript><div class="statcounter"><a title="web analytics"
            href="http://statcounter.com/" target="_blank"><img
            class="statcounter"
            src="http://c.statcounter.com/10741566/0/2e35f489/0/"
            alt="web analytics"></a></div></noscript>
            <!-- End of StatCounter Code for Default Guide -->
        </div>
    </div>
</footer>
<!-- footer-main -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<?php echo base_url('public/template/js/vendor/jquery-1.10.2.min.js') ?>"><\/script>')</script>
<script src="<?php echo base_url('public/template/js/vendor/jquery.fancybox.pack.js') ?>"></script>
<script src="<?php echo base_url('public/template/js/vendor/zebra_datepicker.js') ?>"></script>

<script src="<?php echo base_url('public/template/js/main.js') ?>"></script>

<script type="text/javascript" src="<?php echo base_url('static/js/jquery.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('static/js/form.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('static/js/popup.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('static/js/misc.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('static/js/editor.js') ?>"></script>

</body>
</html>