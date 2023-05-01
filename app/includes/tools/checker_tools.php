<?php

return [
    'dns_lookup' => [
        'icon' => 'fa fa-network-wired',
        'similar' => [
            'reverse_ip_lookup',
            'ip_lookup',
            'ssl_lookup',
            'whois_lookup',
            'ping',
        ]
    ],

    'ip_lookup' => [
        'icon' => 'fa fa-search-location',
        'similar' => [
            'reverse_ip_lookup',
            'dns_lookup',
            'ssl_lookup',
            'whois_lookup',
            'ping',
        ]
    ],

    'reverse_ip_lookup' => [
        'icon' => 'fa fa-book',
        'similar' => [
            'ip_lookup',
            'dns_lookup',
            'ssl_lookup',
            'whois_lookup',
            'ping',
        ]
    ],

    'ssl_lookup' => [
        'icon' => 'fa fa-lock',
        'similar' => [
            'reverse_ip_lookup',
            'dns_lookup',
            'ip_lookup',
            'whois_lookup',
            'ping',
        ]
    ],

    'whois_lookup' => [
        'icon' => 'fa fa-fingerprint',
        'similar' => [
            'reverse_ip_lookup',
            'dns_lookup',
            'ip_lookup',
            'ssl_lookup',
            'ping',
        ]
    ],

    'ping' => [
        'icon' => 'fa fa-server',
        'similar' => [
            'reverse_ip_lookup',
            'dns_lookup',
            'ip_lookup',
            'ssl_lookup',
            'whois_lookup',
        ]
    ],

    'http_headers_lookup' => [
        'icon' => 'fa fa-asterisk'
    ],

    'safe_url_checker' => [
        'icon' => 'fab fa-google'
    ],

    'google_cache_checker' => [
        'icon' => 'fa fa-history'
    ],

    'url_redirect_checker' => [
        'icon' => 'fa fa-directions'
    ],

    'password_strength_checker' => [
        'icon' => 'fa fa-key',
        'similar' => [
            'password_generator',
        ]
    ],

    'meta_tags_checker' => [
        'icon' => 'fa fa-external-link-alt'
    ],

    'website_hosting_checker' => [
        'icon' => 'fa fa-server'
    ],

    'file_mime_type_checker' => [
        'icon' => 'fa fa-file'
    ],

    'gravatar_checker' => [
        'icon' => 'fa fa-user-circle'
    ],
];
