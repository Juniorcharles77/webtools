<?php defined('ALTUMCODE') || die() ?>

<div class="mt-5">
    <h2 class="h4 mb-4"><?= l('tools.popular_tools') ?></h2>

    <div class="row" id="popular_tools">
        <?php $i = 1; ?>
        <?php foreach($data->tools_usage as $key => $value): ?>
            <?php if(settings()->tools->available_tools->{$key} && $this->user->plan_settings->enabled_tools->{$key}): ?>
                <div class="col-12 mb-4 position-relative" data-tool-id="<?= $key ?>" data-tool-name="<?= l('tools.' . $key . '.name') ?>">
                    <div class="card d-flex flex-row h-100 overflow-hidden <?= $this->user->plan_settings->enabled_tools->{$key} ? null : 'container-disabled' ?>" <?= $this->user->plan_settings->enabled_tools->{$key} ? null : 'data-toggle="tooltip" title="' . l('global.info_message.plan_feature_no_access') . '"' ?>>
                        <div class="px-3 d-flex flex-column justify-content-center">
                            <div class="p-2 bg-primary-100 d-flex align-items-center justify-content-center">
                                <a href="<?= url(str_replace('_', '-', $key)) ?>" class="stretched-link">
                                    <i class="<?= $data->tools[$key]['icon'] ?> fa-fw text-primary-600"></i>
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
                if($i > 5) {
                    break;
                }

                $i++;
                ?>
            <?php endif ?>
        <?php endforeach ?>
    </div>
</div>
