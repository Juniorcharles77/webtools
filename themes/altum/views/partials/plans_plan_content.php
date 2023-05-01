<?php defined('ALTUMCODE') || die() ?>

<div class="">
    <?php foreach(require APP_PATH . 'includes/tools/categories.php' as $tool => $tool_properties): ?>
        <?php
        $enabled_tools_count = 0;
        $enabled_tools_string = '';
        foreach(require APP_PATH . 'includes/tools/' . $tool . '.php' as $key => $value) {
            if(settings()->tools->available_tools->{$key} && $data->plan_settings->enabled_tools->{$key}) {
                $enabled_tools_count++;
                $enabled_tools_string .= l('tools.' . $key . '.name') . '<br />';
            }
        }
        ?>
        <div class="d-flex justify-content-between align-items-center my-3 <?= $enabled_tools_count ? null : 'text-muted' ?>">
            <div>
                <?= sprintf('<strong>%s</strong> %s', $enabled_tools_count, l('tools.' . $tool)) ?>
                <span class="mr-1" data-toggle="tooltip" data-html="true" title="<?= $enabled_tools_string ?>"><i class="fa fa-fw fa-xs fa-question text-gray-500"></i></span>
            </div>

            <i class="fa fa-fw fa-sm <?= $enabled_tools_count ? 'fa-check text-success' : 'fa-times' ?>"></i>
        </div>
    <?php endforeach ?>

    <?php if(\Altum\Plugin::is_active('email-signatures') && settings()->signatures->is_enabled): ?>
        <div class="d-flex justify-content-between align-items-center my-3">
            <div>
                <?= sprintf(l('global.plan_settings.signatures_limit'), '<strong>' . ($data->plan_settings->signatures_limit == -1 ? l('global.unlimited') : nr($data->plan_settings->signatures_limit)) . '</strong>') ?>
            </div>

            <i class="fa fa-fw fa-sm <?= $data->plan_settings->signatures_limit ? 'fa-check text-success' : 'fa-times text-muted' ?>"></i>
        </div>

        <div class="d-flex justify-content-between align-items-center my-3">
            <div>
                <?= sprintf(l('global.plan_settings.projects_limit'), '<strong>' . ($data->plan_settings->projects_limit == -1 ? l('global.unlimited') : nr($data->plan_settings->projects_limit)) . '</strong>') ?>
            </div>

            <i class="fa fa-fw fa-sm <?= $data->plan_settings->projects_limit ? 'fa-check text-success' : 'fa-times text-muted' ?>"></i>
        </div>
    <?php endif ?>

    <?php if(\Altum\Plugin::is_active('teams')): ?>
        <div class="d-flex justify-content-between align-items-center my-3">
            <div>
                <?= sprintf(l('global.plan_settings.teams_limit'), '<strong>' . ($data->plan_settings->teams_limit == -1 ? l('global.unlimited') : nr($data->plan_settings->teams_limit)) . '</strong>') ?>
            </div>

            <i class="fa fa-fw fa-sm <?= $data->plan_settings->teams_limit ? 'fa-check text-success' : 'fa-times text-muted' ?>"></i>
        </div>

        <div class="d-flex justify-content-between align-items-center my-3">
            <div>
                <?= sprintf(l('global.plan_settings.team_members_limit'), '<strong>' . ($data->plan_settings->team_members_limit == -1 ? l('global.unlimited') : nr($data->plan_settings->team_members_limit)) . '</strong>') ?>
            </div>

            <i class="fa fa-fw fa-sm <?= $data->plan_settings->team_members_limit ? 'fa-check text-success' : 'fa-times text-muted' ?>"></i>
        </div>
    <?php endif ?>

    <?php if(\Altum\Plugin::is_active('affiliate') && settings()->affiliate->is_enabled): ?>
        <div class="d-flex justify-content-between align-items-center my-3">
            <div>
                <?= sprintf(l('global.plan_settings.affiliate_commission_percentage'), '<strong>' . nr($data->plan_settings->affiliate_commission_percentage) . '%</strong>') ?>
            </div>

            <i class="fa fa-fw fa-sm <?= $data->plan_settings->affiliate_commission_percentage ? 'fa-check text-success' : 'fa-times text-muted' ?>"></i>
        </div>
    <?php endif ?>

    <div class="d-flex justify-content-between align-items-center my-3 <?= $data->plan_settings->api_is_enabled ? null : 'text-muted' ?>">
        <div>
            <?= l('global.plan_settings.api_is_enabled') ?>
            <span class="mr-1" data-toggle="tooltip" title="<?= l('global.plan_settings.api_is_enabled_help') ?>"><i class="fa fa-fw fa-xs fa-question text-gray-500"></i></span>
        </div>

        <i class="fa fa-fw fa-sm <?= $data->plan_settings->api_is_enabled ? 'fa-check text-success' : 'fa-times' ?>"></i>
    </div>

    <div class="d-flex justify-content-between align-items-center my-3 <?= $data->plan_settings->no_ads ? null : 'text-muted' ?>">
        <div>
            <?= l('global.plan_settings.no_ads') ?>
            <span class="mr-1" data-toggle="tooltip" title="<?= l('global.plan_settings.no_ads_help') ?>"><i class="fa fa-fw fa-xs fa-question text-gray-500"></i></span>
        </div>

        <i class="fa fa-fw fa-sm <?= $data->plan_settings->no_ads ? 'fa-check text-success' : 'fa-times' ?>"></i>
    </div>


</div>
