<?php

return [
    'base64_encoder' => [
        'icon' => 'fab fa-codepen',
        'similar' => [
            'base64_decoder',
        ]
    ],

    'base64_decoder' => [
        'icon' => 'fab fa-codepen',
        'similar' => [
            'base64_encoder',
        ]
    ],

    'base64_to_image' => [
        'icon' => 'fa fa-image',
        'similar' => [
            'image_to_base64',
        ]
    ],

    'image_to_base64' => [
        'icon' => 'fa fa-image',
        'similar' => [
            'base64_to_image',
        ]
    ],

    'url_encoder' => [
        'icon' => 'fa fa-link',
        'similar' => [
            'url_decoder',
        ]
    ],

    'url_decoder' => [
        'icon' => 'fa fa-link',
        'similar' => [
            'url_encoder',
        ]
    ],

    'color_converter' => [
        'icon' => 'fa fa-paint-brush'
    ],

    'binary_converter' => [
        'icon' => 'fa fa-list-ol',
        'similar' => [
            'hex_converter',
            'ascii_converter',
            'decimal_converter',
            'octal_converter',
        ]
    ],

    'hex_converter' => [
        'icon' => 'fa fa-dice-six',
        'similar' => [
            'binary_converter',
            'ascii_converter',
            'decimal_converter',
            'octal_converter',
        ]
    ],

    'ascii_converter' => [
        'icon' => 'fa fa-subscript',
        'similar' => [
            'binary_converter',
            'hex_converter',
            'decimal_converter',
            'octal_converter',
        ]
    ],

    'decimal_converter' => [
        'icon' => 'fa fa-superscript',
        'similar' => [
            'binary_converter',
            'hex_converter',
            'ascii_converter',
            'octal_converter',
        ]
    ],

    'octal_converter' => [
        'icon' => 'fa fa-sort-numeric-up',
        'similar' => [
            'binary_converter',
            'hex_converter',
            'ascii_converter',
            'decimal_converter',
        ]
    ],

    'morse_converter' => [
        'icon' => 'fa fa-ellipsis-h'
    ],

    'number_to_words_converter' => [
        'icon' => 'fa fa-sort-amount-down'
    ],

//    'json_to_php_array_converter' => [
//        'icon' => 'fab fa-php'
//    ],
];
