<?php
/*
 * @copyright Copyright (c) 2022 AltumCode (https://altumcode.com/)
 *
 * This software is exclusively sold through https://altumcode.com/ by the AltumCode author.
 * Downloading this product from any other sources and running it without a proper license is illegal,
 *  except the official ones linked from https://altumcode.com/.
 */

$access = [
    'read' => [
        'read.all' => l('team_members.input.access.all')
    ],

    'create' => [
    ],

    'update' => [
    ],

    'delete' => [
    ],
];

if(\Altum\Plugin::is_active('email-signatures')) {
    $access['create']['create.signatures'] = l('signatures.title');
    $access['update']['update.signatures'] = l('signatures.title');
    $access['delete']['delete.signatures'] = l('signatures.title');
}

return $access;
