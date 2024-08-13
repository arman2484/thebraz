<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\laravel_example\UserManagement;
use App\Http\Controllers\authentications\LoginBasic;




$controller_path = 'App\Http\Controllers';

// Main Page Route
Route::get('/auth/login-basic', $controller_path . '\authentications\LoginBasic@index')->name('auth-login-basic');
Route::post('/auth/login', $controller_path . '\authentications\LoginBasic@login')->name('auth-login');

Route::group(['middleware' => ['admin']], function () {
    $controller_path = 'App\Http\Controllers';
    Route::get('/auth/logout', $controller_path . '\authentications\LoginBasic@logout')->name('auth-logout');

    Route::get('/', $controller_path . '\apps\EcommerceDashboard@index')->name('app-ecommerce-dashboard');
    Route::get('/dashboard/ecommerce', $controller_path . '\dashboard\Ecommerce@index')->name('dashboard-ecommerce');

    // apps

    Route::get('/app/ecommerce/dashboard', $controller_path . '\apps\EcommerceDashboard@index')->name('app-ecommerce-dashboard');
    Route::get('/app/ecommerce/getuserslist', $controller_path . '\apps\EcommerceDashboard@getUsersList')->name('app-ecommerce-getuserslist');


    Route::get('/app/user/list', $controller_path . '\apps\UserList@index')->name('app-user-list');
    Route::get('/app/user/getusersdata', $controller_path . '\apps\UserList@getUsersData')->name('app-user-getusersdata');
    Route::post('/app/user/userdelete/{id}', $controller_path . '\apps\UserList@deleteUser')->name('app-user-userdelete');
    Route::get('/app/user/useredit/{id}', $controller_path . '\apps\UserList@editUser')->name('app-user-useredit');
    Route::post('/app/user/userupdate/{id}', $controller_path . '\apps\UserList@updateUser')->name('app-user-userupdate');


    // pages
    Route::get('/pages/profile-user', $controller_path . '\pages\UserProfile@index')->name('pages-profile-user');
    Route::get('/pages/profile-edit/{id}', $controller_path . '\pages\UserProfile@editProfile')->name('pages-profile-edit');
    Route::post('/pages/profile-update/{id}', $controller_path . '\pages\UserProfile@updateProfile')->name('pages-profile-update');
    Route::get('/pages/profile-security', $controller_path . '\pages\AccountSettingsSecurity@index')->name('pages-profile-security');
    Route::get('/pages/profile-editsecurity/{id}', $controller_path . '\pages\AccountSettingsSecurity@editSecurity')->name('pages-profile-editsecurity');
    Route::post('/pages/profile-updatesecurity/{id}', $controller_path . '\pages\AccountSettingsSecurity@changePassword')->name('pages-profile-updatesecurity');


});