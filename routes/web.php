<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[
    'as'    =>  'index',
    'uses'  =>  'PublicController@index'
]);

Route::post('/check-user',[
   'as' =>  'check.user',
   'uses'   =>  'PublicController@checkUser'
]);

Route::post('/get-question',[
    'as'    =>  'get.question',
    'uses'  =>  'PublicController@getQuestion'
]);

Route::post('/check-anwer',[
    'as' =>  'check.anwer',
    'uses'   =>  'PublicController@checkAnwer'
]);

Route::post('/get-table',[
    'as'    =>  'get.table',
    'uses'  =>  'PublicController@getTable'
]);

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/fail', 'HomeController@fail')->name('fail');
Route::get('/logout','HomeController@logout')->name('logout');
