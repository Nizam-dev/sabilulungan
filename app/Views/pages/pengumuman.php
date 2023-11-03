<?= $this->extend('template/master') ?>
<?= $this->section('css') ?>
<style type="text/css">
    table {
        margin-bottom: 10px;
    }

    table tr {
        border-bottom: 1px dotted #CCC;
        /*height:70px;*/
    }

    table tr:last-child {
        border-bottom: none
    }

    table tr td {
        padding: 15px 0
    }

    table tr td table tr {
        height: 30px;
    }

    table tr td table tr td {
        padding: 0
    }

    span {
        color: #bbb;
        font-style: italic;
    }
</style>
<?= $this->endSection() ?>
<?= $this->section('content') ?>

<div class="about-page wrapper mt-120">
    <h1 class="page-title page-title-border">Pengumuman</h1>
    <div class="col-wrapper clearfix">
        <table width="100%">

        </table>
    </div>

</div>

<?= $this->endSection() ?>