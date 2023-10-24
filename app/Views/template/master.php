<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sabilulungan - Bansos dan hibah online">
    <meta name="copyright" content="2016 Sabilulungan. All rights reserved.">
    <title>Salingbantu - Bansos dan hibah online</title>
    <link rel="icon" type="image/png" href="<?= base_url('public/template/img/favicon.png') ?>">


    <?= $this->include('template/css') ?>
    <?= $this->renderSection('css') ?>
    

</head>

<body class="home">
        <?= $this->include('template/navbar') ?>

        <div role="main" class="content-main">
            <?= $this->renderSection('content') ?>
        </div>


        <!-- footer-main -->
        <?= $this->include('template/footer') ?>
        <?= $this->include('template/js') ?>
        <?= $this->renderSection('js') ?>


        


</body>

</html>