<?php

return [
    'celsius_to_fahrenheit' => [
        'icon' => 'fa fa-temperature-low',
        'similar' => [
            'fahrenheit_to_celsius'
        ]
    ],

    'celsius_to_kelvin' => [
        'icon' => 'fa fa-temperature-low',
        'similar' => [
            'kelvin_to_celsius'
        ]
    ],

    'fahrenheit_to_celsius' => [
        'icon' => 'fa fa-temperature-high',
        'similar' => [
            'celsius_to_fahrenheit'
        ]
    ],

    'fahrenheit_to_kelvin' => [
        'icon' => 'fa fa-temperature-high',
        'similar' => [
            'kelvin_to_fahrenheit'
        ]
    ],

    'kelvin_to_celsius' => [
        'icon' => 'fa fa-thermometer-empty',
        'similar' => [
            'celsius_to_kelvin'
        ]
    ],

    'kelvin_to_fahrenheit' => [
        'icon' => 'fa fa-thermometer-empty',
        'similar' => [
            'fahrenheit_to_kelvin'
        ]
    ],

    'miles_to_kilometers' => [
        'icon' => 'fa fa-road',
        'similar' => [
            'kilometers_to_miles'
        ]
    ],

    'kilometers_to_miles' => [
        'icon' => 'fa fa-archway',
        'similar' => [
            'miles_to_kilometers'
        ]
    ],

    'miles_per_hour_to_kilometers_per_hour' => [
        'icon' => 'fa fa-road',
        'similar' => [
            'kilometers_per_hour_to_miles_per_hour'
        ]
    ],

    'kilometers_per_hour_to_miles_per_hour' => [
        'icon' => 'fa fa-archway',
        'similar' => [
            'miles_per_hour_to_kilometers_per_hour'
        ]
    ],

    'kilograms_to_pounds' => [
        'icon' => 'fa fa-balance-scale-left',
        'similar' => [
            'pounds_to_kilograms'
        ]
    ],

    'pounds_to_kilograms' => [
        'icon' => 'fa fa-balance-scale-right',
        'similar' => [
            'kilograms_to_pounds'
        ]
    ],

    'number_to_roman_numerals' => [
        'icon' => 'fa fa-sort-numeric-up-alt',
        'similar' => [
            'roman_numerals_to_number'
        ]
    ],

    'roman_numerals_to_number' => [
        'icon' => 'fa fa-sort-numeric-up',
        'similar' => [
            'number_to_roman_numerals'
        ]
    ],

    'liters_to_gallons_us' => [
        'icon' => 'fa fa-tint',
        'similar' => [
            'liters_to_gallons_imperial',
            'gallons_us_to_liters',
            'gallons_imperial_to_liters',
        ]
    ],

    'liters_to_gallons_imperial' => [
        'icon' => 'fa fa-tint',
        'similar' => [
            'liters_to_gallons_us',
            'gallons_us_to_liters',
            'gallons_imperial_to_liters',
        ]
    ],

    'gallons_us_to_liters' => [
        'icon' => 'fa fa-tint',
        'similar' => [
            'liters_to_gallons_us',
            'liters_to_gallons_imperial',
            'gallons_imperial_to_liters',
        ]
    ],

    'gallons_imperial_to_liters' => [
        'icon' => 'fa fa-tint',
        'similar' => [
            'liters_to_gallons_us',
            'liters_to_gallons_imperial',
            'gallons_us_to_liters',
        ]
    ],
];
