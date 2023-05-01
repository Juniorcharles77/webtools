<?php defined('ALTUMCODE') || die() ?>

<?php if(settings()->payment->is_enabled): ?>

    <?php
    $plans = [];
    $available_payment_frequencies = [];

    $plans = (new \Altum\Models\Plan())->get_plans();

    foreach($plans as $plan) {
        if($plan->status != 1) continue;

        foreach(['monthly', 'annual', 'lifetime'] as $value) {
            if($plan->{$value . '_price'}) {
                $available_payment_frequencies[$value] = true;
            }
        }
    }
    ?>

    <?php if(count($plans)): ?>
        <div class="mb-4 text-center">
            <div class="btn-group btn-group-toggle" data-toggle="buttons">

                <?php if(isset($available_payment_frequencies['monthly'])): ?>
                    <label class="btn btn-gray-200 active" data-payment-frequency="monthly">
                        <input type="radio" name="payment_frequency" checked="checked"> <?= l('plan.custom_plan.monthly') ?>
                    </label>
                <?php endif ?>

                <?php if(isset($available_payment_frequencies['annual'])): ?>
                    <label class="btn btn-gray-200 <?= !isset($available_payment_frequencies['monthly']) ? 'active' : null ?>" data-payment-frequency="annual">
                        <input type="radio" name="payment_frequency" <?= !isset($available_payment_frequencies['monthly']) ? 'checked="checked"' : null ?>> <?= l('plan.custom_plan.annual') ?>
                    </label>
                <?php endif ?>

                <?php if(isset($available_payment_frequencies['lifetime'])): ?>
                    <label class="btn btn-gray-200 <?= !isset($available_payment_frequencies['monthly']) && !isset($available_payment_frequencies['annual']) ? 'active' : null ?>" data-payment-frequency="lifetime">
                        <input type="radio" name="payment_frequency" <?= !isset($available_payment_frequencies['monthly']) && !isset($available_payment_frequencies['annual']) ? 'checked="checked"' : null ?>> <?= l('plan.custom_plan.lifetime') ?>
                    </label>
                <?php endif ?>

            </div>
        </div>
    <?php endif ?>
<?php endif ?>

<div class="row justify-content-around">
    <?php if(settings()->plan_guest->status == 1): ?>

        <div class="col-12 col-lg-4 mb-4">
            <div class="card pricing-card h-100" style="<?= settings()->plan_guest->color ? 'border-color: ' . settings()->plan_guest->color : null ?>">
                <div class="card-body d-flex flex-column">

                    <div class="mb-3">
                        <div class="font-weight-bold text-center text-uppercase pb-2 text-muted border-bottom border-gray-200"><?= settings()->plan_guest->name ?></div>
                    </div>

                    <div class="mb-4 text-center">
                        <div class="h1">
                            <?= settings()->plan_guest->price ?>
                        </div>
                        <div>
                            <span class="text-muted"><?= settings()->plan_guest->description ?></span>
                        </div>
                    </div>

                    <?= include_view(THEME_PATH . 'views/partials/plans_plan_content.php', ['plan_settings' => settings()->plan_guest->settings]) ?>
                </div>

                <div class="p-3">
                    <button type="button" class="btn btn-block btn-primary disabled" disabled="disabled"><?= l('plan.button.choose') ?></button>
                </div>
            </div>
        </div>

    <?php endif ?>

    <?php if(settings()->plan_free->status == 1): ?>

        <div class="col-12 col-lg-4 mb-4">
            <div class="card pricing-card h-100" style="<?= settings()->plan_free->color ? 'border-color: ' . settings()->plan_free->color : null ?>">
                <div class="card-body d-flex flex-column">

                    <div class="mb-3">
                        <div class="font-weight-bold text-center text-uppercase pb-2 text-muted border-bottom border-gray-200"><?= settings()->plan_free->name ?></div>
                    </div>

                    <div class="mb-4 text-center">
                        <div class="h1">
                            <?= settings()->plan_free->price ?>
                        </div>
                        <div>
                            <span class="text-muted"><?= settings()->plan_free->description ?></span>
                        </div>
                    </div>

                    <?= include_view(THEME_PATH . 'views/partials/plans_plan_content.php', ['plan_settings' => settings()->plan_free->settings]) ?>
                </div>

                <div class="p-3">
                    <a href="<?= url('register') ?>" class="btn btn-block btn-primary <?= \Altum\Authentication::check() && $this->user->plan_id != 'free' ? 'disabled' : null ?>"><?= l('plan.button.choose') ?></a>
                </div>
            </div>
        </div>

    <?php endif ?>

    <?php if(settings()->payment->is_enabled): ?>

        <?php foreach($plans as $plan): ?>
        <?php if($plan->status != 1) continue; ?>

        <?php $annual_price_savings = ceil(($plan->monthly_price * 12) - $plan->annual_price); ?>

        <div
                class="col-12 col-lg-4 mb-4"
                data-plan-monthly="<?= json_encode((bool) $plan->monthly_price) ?>"
                data-plan-annual="<?= json_encode((bool) $plan->annual_price) ?>"
                data-plan-lifetime="<?= json_encode((bool) $plan->lifetime_price) ?>"
        >
            <div class="card pricing-card h-100" style="<?= $plan->color ? 'border-color: ' . $plan->color : null ?>">
                <div class="card-body d-flex flex-column">

                    <div class="mb-3">
                        <div class="font-weight-bold text-center text-uppercase pb-2 text-muted border-bottom border-gray-200"><?= $plan->name ?></div>
                    </div>

                    <div class="mb-4 text-center">
                        <div class="h1 d-none" data-plan-payment-frequency="monthly"><?= nr($plan->monthly_price, 2, false) ?></div>
                        <div class="h1 d-none" data-plan-payment-frequency="annual"><?= nr($plan->annual_price, 2, false) ?></div>
                        <div class="h1 d-none" data-plan-payment-frequency="lifetime"><?= nr($plan->lifetime_price, 2, false) ?></div>

                        <span class="h5 text-muted">
                            <?= settings()->payment->currency ?>
                        </span>

                        <div>
                            <span class="text-muted">
                                <?= $plan->description ?>
                            </span>

                            <?php if($plan->monthly_price): ?>
                                <span class="d-none" data-plan-payment-frequency="annual"><span class="badge badge-success">- <?= $annual_price_savings . ' ' . settings()->payment->currency ?></span></span>
                            <?php endif ?>
                        </div>
                    </div>

                    <?= include_view(THEME_PATH . 'views/partials/plans_plan_content.php', ['plan_settings' => $plan->settings]) ?>
                </div>

                <div class="p-3">
                    <a href="<?= url('register?redirect=pay/' . $plan->plan_id) ?>" class="btn btn-block btn-primary">
                        <?php if(\Altum\Authentication::check()): ?>
                            <?php if(!$this->user->plan_trial_done && $plan->trial_days): ?>
                                <?= sprintf(l('plan.button.trial'), $plan->trial_days) ?>
                            <?php elseif($this->user->plan_id == $plan->plan_id): ?>
                                <?= l('plan.button.renew') ?>
                            <?php else: ?>
                                <?= l('plan.button.choose') ?>
                            <?php endif ?>
                        <?php else: ?>
                            <?php if($plan->trial_days): ?>
                                <?= sprintf(l('plan.button.trial'), $plan->trial_days) ?>
                            <?php else: ?>
                                <?= l('plan.button.choose') ?>
                            <?php endif ?>
                        <?php endif ?>
                    </a>
                </div>
            </div>
        </div>

    <?php endforeach ?>

    <?php ob_start() ?>
        <script>
            'use strict';

            let payment_frequency_handler = (event = null) => {

                let payment_frequency = null;

                if(event) {
                    payment_frequency = $(event.currentTarget).data('payment-frequency');
                } else {
                    payment_frequency = $('[name="payment_frequency"]:checked').closest('label').data('payment-frequency');
                }

                switch(payment_frequency) {
                    case 'monthly':
                        $(`[data-plan-payment-frequency="annual"]`).removeClass('d-inline-block').addClass('d-none');
                        $(`[data-plan-payment-frequency="lifetime"]`).removeClass('d-inline-block').addClass('d-none');

                        break;

                    case 'annual':
                        $(`[data-plan-payment-frequency="monthly"]`).removeClass('d-inline-block').addClass('d-none');
                        $(`[data-plan-payment-frequency="lifetime"]`).removeClass('d-inline-block').addClass('d-none');

                        break

                    case 'lifetime':
                        $(`[data-plan-payment-frequency="monthly"]`).removeClass('d-inline-block').addClass('d-none');
                        $(`[data-plan-payment-frequency="annual"]`).removeClass('d-inline-block').addClass('d-none');

                        break
                }

                $(`[data-plan-payment-frequency="${payment_frequency}"]`).addClass('d-inline-block');

                $(`[data-plan-${payment_frequency}="true"]`).removeClass('d-none').addClass('d-inline-block');
                $(`[data-plan-${payment_frequency}="false"]`).addClass('d-none').removeClass('d-inline-block');

            };

            $('[data-payment-frequency]').on('click', payment_frequency_handler);

            payment_frequency_handler();
        </script>
    <?php \Altum\Event::add_content(ob_get_clean(), 'javascript') ?>

    <?php if(settings()->plan_custom->status == 1): ?>

        <div class="col-12 col-lg-4 mb-4">
            <div class="card pricing-card h-100" style="<?= settings()->plan_custom->color ? 'border-color: ' . settings()->plan_custom->color : null ?>">
                <div class="card-body d-flex flex-column">

                    <div class="mb-3">
                        <div class="font-weight-bold text-center text-uppercase pb-2 text-muted border-bottom border-gray-200"><?= settings()->plan_custom->name ?></div>
                    </div>

                    <div class="mb-4 text-center">
                        <div class="h1">
                            <?= settings()->plan_custom->price ?>
                        </div>
                        <div>
                            <span class="text-muted"><?= settings()->plan_custom->description ?></span>
                        </div>
                    </div>

                    <?= include_view(THEME_PATH . 'views/partials/plans_plan_content.php', ['plan_settings' => settings()->plan_custom->settings]) ?>
                </div>

                <div class="p-3">
                    <a href="<?= settings()->plan_custom->custom_button_url ?>" class="btn btn-block btn-primary"><?= l('plan.button.contact') ?></a>
                </div>
            </div>
        </div>

    <?php endif ?>

    <?php endif ?>
</div>


