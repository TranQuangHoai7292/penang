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
Route::post('/vote',[
    'as'    =>  'vote',
    'uses'  =>  'PublicController@vote'
]);
Route::post('/get-table',[
    'as'    =>  'get.table',
    'uses'  =>  'PublicController@getTable'
]);
Route::get('/thanks',[
    'as'    =>  'thanks',
    'uses'  =>  'PublicController@thanks'
]);
Route::get('/re-vote',[
    'as'    =>  'vote2',
    'uses'  =>  'PublicController@vote2'
]);
Route::post('/team',[
   'as' =>  'teams',
   'uses'   =>  'PublicController@team'
]);

Route::get('/re-vote','PublicController@vote2')->name('vote2');
Route::post('/overtime',[
    'as'    =>  'overtime',
    'uses'  =>  'PublicController@overTime'
]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/fail', 'HomeController@fail')->name('fail');
Route::get('/logout','HomeController@logout')->name('logout');
Route::get('/join','HomeController@join')->name('join');
