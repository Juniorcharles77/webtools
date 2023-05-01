<?php defined('ALTUMCODE') || die() ?>

<div class="index-background pt-7 pb-7 mb-4">
    <div class="container">
        <?= \Altum\Alerts::output_alerts() ?>

        <div class="row justify-content-center">
            <div class="col-11 col-md-10 col-lg-7">
                <h1 class="index-header text-center mb-2"><?= l('index.header') ?></h1>
            </div>

            <div class="col-10 col-sm-8 col-lg-6">
                <p class="index-subheader text-center mb-5"><?= l('index.subheader') ?></p>
            </div>
        </div>

        <div class="d-flex flex-column flex-lg-row justify-content-center">
            <a href="#tools" class="btn btn-primary index-button mb-3 mb-lg-0 mr-lg-3">
                <i class="fa fa-fw fa-xs fa-tools mr-1"></i> <?= l('index.tools') ?>
            </a>

            <?php if(settings()->users->register_is_enabled && !\Altum\Authentication::check()): ?>
            <a href="<?= url('register') ?>" target="_blank" class="btn btn-gray-200 index-button mb-3 mb-lg-0">
                <i class="fa fa-fw fa-xs fa-user-plus mr-1"></i> <?= l('index.register') ?>
            </a>
            <?php endif ?>
        </div>
    </div>
</div>


<div class="container">
    <h1 class="h3 mb-4"><?= l('tools.header') ?></h1>

    <form action="" method="get" role="form">
        <div class="form-group">
            <input type="search" name="search" class="form-control form-control-lg" value="" placeholder="<?= l('global.filters.search') ?>" aria-label="<?= l('global.filters.search') ?>" />
        </div>
    </form>

    <div id="tools">
        <?php function get_tools_section_output($file_name, $user, $data) { ?>
            <?php $enabled_tools_html = $disabled_tools_html = ''; ?>
            <?php foreach(require APP_PATH . 'includes/tools/' . $file_name . '.php' as $key => $value): ?>
                <?php if(settings()->tools->available_tools->{$key}): ?>
                    <?php ob_start() ?>
                    <div class="col-12 col-lg-6 mb-4 position-relative" data-tool-id="<?= $key ?>" data-tool-name="<?= l('tools.' . $key . '.name') ?>">
                        <div class="card d-flex flex-row h-100 overflow-hidden <?= $user->plan_settings->enabled_tools->{$key} ? null : 'container-disabled' ?>" <?= $user->plan_settings->enabled_tools->{$key} ? null : 'data-toggle="tooltip" title="' . l('global.info_message.plan_feature_no_access') . '"' ?>>
                            <div class="px-3 d-flex flex-column justify-content-center">
                                <div class="p-2 bg-primary-100 d-flex align-items-center justify-content-center">
                                    <a href="<?= url(str_replace('_', '-', $key)) ?>" class="stretched-link">
                                        <i class="<?= $value['icon'] ?> fa-fw text-primary-600"></i>
                                    </a>
                                </div>
                            </div>

                            <div class="card-body text-truncate">
                                <strong><?= l('tools.' . $key . '.name') ?></strong>
                                <p class="text-truncate small m-0"><?= l('tools.' . $key . '.description') ?></p>
                            </div>

                            <div class="p-3">
                                <div class="badge badge-gray-100" data-toggle="tooltip" title="<?= l('tools.total_views') ?>">
                                    <i class="fa fa-fw fa-sm fa-eye mr-1"></i> <?= nr($data->tools_usage[$key]->total_views ?? 0) ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    if($user->plan_settings->enabled_tools->{$key}) {
                        $enabled_tools_html .= ob_get_clean();
                    } else {
                        $disabled_tools_html .= ob_get_clean();
                    }
                    ?>
                <?php endif ?>
            <?php endforeach ?>

            <?php return ['enabled_tools_html' => $enabled_tools_html, 'disabled_tools_html' => $disabled_tools_html] ?>
        <?php } ?>

        <?php foreach(require APP_PATH . 'includes/tools/categories.php' as $tool => $tool_properties): ?>
            <?php ${$tool} = get_tools_section_output($tool, $this->user, $data); ?>
            <?php if(empty(${$tool}['enabled_tools_html']) && empty(${$tool}['disabled_tools_html'])) continue; ?>

            <div class="card mt-5 mb-4" data-tool-section>
                <div class="card-body" style="background: <?= $tool_properties['color'] ?>; color: white;">
                    <strong><?= l('tools.' . $tool) ?></strong>
                    <p class="text-truncate small m-0"><?= l('tools.' . $tool . '_help') ?></p>
                </div>
            </div>

            <div class="row">
                <?php echo ${$tool}['enabled_tools_html']; echo ${$tool}['disabled_tools_html']; ?>
            </div>
        <?php endforeach ?>
    </div>
</div>

<?php if(settings()->main->display_index_plans): ?>
<div class="my-5">&nbsp;</div>

<div class="container">
    <div class="text-center mb-5">
        <h2><?= l('index.pricing.header') ?></h2>
        <p class="text-muted"><?= l('index.pricing.subheader') ?></p>
    </div>

    <?= $this->views['plans'] ?>
</div>
<?php endif ?>

<div class="my-3">&nbsp;</div>

<?php if(settings()->users->register_is_enabled && !\Altum\Authentication::check()): ?>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="d-flex flex-column flex-lg-row justify-content-between align-items-lg-center">
                    <div>
                        <h2 class="h4 text-gray-900"><?= l('index.cta.header') ?></h2>
                        <p class="text-muted"><?= l('index.cta.subheader') ?></p>
                    </div>

                    <div>
                        <a href="<?= url('register') ?>" class="btn btn-primary btn-block index-button"><?= l('index.cta.register') ?></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif ?>


<?php ob_start() ?>
<script>
    'use strict';

    let tools = [];
    document.querySelectorAll('[data-tool-id]').forEach(element => tools.push({
        id: element.getAttribute('data-tool-id'),
        name: element.getAttribute('data-tool-name').toLowerCase(),
    }));

    document.querySelector('input[name="search"]').addEventListener('keyup', event => {
        let string = event.currentTarget.value.toLowerCase();

        /* Hide header sections */
        document.querySelectorAll('[data-tool-section]').forEach(element => {
            if(string.length) {
                element.classList.add('d-none');
            } else {
                element.classList.remove('d-none');
            }
        });

        for(let tool of tools) {
            if(tool.name.includes(string)) {
                document.querySelector(`[data-tool-id="${tool.id}"]`).classList.remove('d-none');
            } else {
                document.querySelector(`[data-tool-id="${tool.id}"]`).classList.add('d-none');
            }
        }
    });
</script>
<?php \Altum\Event::add_content(ob_get_clean(), 'javascript') ?>
