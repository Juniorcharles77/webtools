<?php defined('ALTUMCODE') || die() ?>

<div class="container">
    <?= \Altum\Alerts::output_alerts() ?>

    <nav aria-label="breadcrumb">
        <ol class="custom-breadcrumbs small">
            <li><a href="<?= url('tools') ?>"><?= l('tools.breadcrumb') ?></a> <i class="fa fa-fw fa-angle-right"></i></li>
            <li class="active" aria-current="page"><?= l('tools.bytes_to_terabits.name') ?></li>
        </ol>
    </nav>

    <div class="row mb-4">
        <div class="col-12 col-xl d-flex align-items-center mb-3 mb-xl-0">
            <h1 class="h4 m-0"><?= l('tools.bytes_to_terabits.name') ?></h1>

            <div class="ml-2">
                <span data-toggle="tooltip" title="<?= l('tools.bytes_to_terabits.description') ?>">
                    <i class="fa fa-fw fa-info-circle text-muted"></i>
                </span>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">

            <form action="" method="post" role="form" enctype="multipart/form-data">
                <input type="hidden" name="token" value="<?= \Altum\Csrf::get() ?>" />

                <div class="form-group">
                    <label for="input"><i class="fa fa-fw fa-sort-numeric-up-alt fa-sm text-muted mr-1"></i> <?= l('tools.bytes') ?></label>
                    <input type="number" step="1" id="input" name="input" class="form-control" value="1" required="required" />
                </div>

                <div class="form-group">
                    <label for="precision"><i class="fa fa-fw fa-ellipsis-h fa-sm text-muted mr-1"></i> <?= l('tools.precision') ?></label>
                    <input type="number" id="precision" min="0" step="1" name="precision" class="form-control" value="4" required="required" />
                </div>

                <button type="submit" name="submit" class="btn btn-block btn-primary" data-is-ajax><?= l('global.submit') ?></button>
            </form>

        </div>
    </div>

    <div id="result_wrapper" class="mt-4 d-none">
        <div class="card">
            <div class="card-body">

                <div class="form-group">
                    <div class="d-flex justify-content-between align-items-center">
                        <label for="result"><?= l('tools.terabits') ?></label>
                        <div>
                            <button
                                    type="button"
                                    class="btn btn-link text-secondary"
                                    data-toggle="tooltip"
                                    title="<?= l('global.clipboard_copy') ?>"
                                    aria-label="<?= l('global.clipboard_copy') ?>"
                                    data-copy="<?= l('global.clipboard_copy') ?>"
                                    data-copied="<?= l('global.clipboard_copied') ?>"
                                    data-clipboard-target="#result"
                                    data-clipboard-text
                            >
                                <i class="fa fa-fw fa-sm fa-copy"></i>
                            </button>
                        </div>
                    </div>
                    <textarea id="result" class="form-control"></textarea>
                </div>

            </div>
        </div>
    </div>

    <?= $this->views['extra_content'] ?>
    
    <?= $this->views['similar_tools'] ?>
    
    <?= $this->views['popular_tools'] ?>
</div>

<?php include_view(THEME_PATH . 'views/partials/clipboard_js.php') ?>


<?php ob_start() ?>
<script>
    'use strict';

    let convert = () => {
        pause_submit_button(document.querySelector('[type="submit"][name="submit"]'));

        const input = parseFloat(document.getElementById('input').value);
        const precision = parseInt(document.getElementById('precision').value);

        if(!input) {
            /* Hide result wrapper */
            document.querySelector('#result_wrapper').classList.add('d-none');
            return;
        }

        /* Display result wrapper */
        document.querySelector('#result_wrapper').classList.remove('d-none');

        /* Calculate result */
        let result = nr(input * 8 / Math.pow(1000, 4), precision);

        document.querySelector('#result').value = result;

        enable_submit_button(document.querySelector('[type="submit"][name="submit"]'));
    }

    ['change', 'paste', 'keyup'].forEach(event_type => {
        document.getElementById('input').addEventListener(event_type, convert);
        document.getElementById('precision').addEventListener(event_type, convert);
    });

    document.querySelector('form').addEventListener('submit', event => {
        event.preventDefault();
        convert();
    });

    convert();
</script>
<?php \Altum\Event::add_content(ob_get_clean(), 'javascript') ?>
