<?php

return [



    'defaults' => [
        'guard' => 'web',
        'passwords' => 'users',
    ],



    'guards' => [
        'web' => [
            'driver' => 'session',
            'provider' => 'users',
        ],
        'admin' => [
            'driver' => 'session',
            'provider' => 'admin_profiles',
        ],
    ],



    'providers' => [
        'users' => [
            'driver' => 'eloquent',
            'model' => App\Models\User::class,
        ],
        'admin_profiles' => [
            'driver' => 'eloquent',
            'model' => App\Models\AdminProfile::class,
        ],
    ],



    'passwords' => [
        'users' => [
            'provider' => 'users',
            'table' => 'password_reset_tokens',
            'expire' => 60,
            'throttle' => 60,
        ],
    ],



    'password_timeout' => 10800,

];
