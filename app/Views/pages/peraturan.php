<?= $this->extend('template/master') ?>
<?= $this->section('css') ?>
<style type="text/css">
    .list li {
        text-transform: uppercase;
    }

</style>
<?= $this->endSection() ?>

<?= $this->section('content') ?>

<div class="about-page wrapper mt-120">
    <h1 class="page-title page-title-border">Peraturan</h1>
    <div class="col-wrapper clearfix">
        <ul class="list">
            <?php foreach($data as $d){ ?>
            <li><a target="_blank" href="<?= base_url('public/media/peraturan/'.$d->content) ?>"><?= $d->title ?></a>
            </li>
            <?php } ?>
        </ul>
    </div>
</div>

<?= $this->endSection() ?>