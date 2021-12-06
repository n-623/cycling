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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['prefix' => 'cycle'], function() {
  Route::get('/', 'CycleController@index');

});


Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function() {
  Route::get('cycle/add', 'Admin\CycleController@add');
  Route::post('cycle/create', 'Admin\CycleController@create');
  Route::get('cycle/index', 'Admin\CycleController@index');
  Route::get('cycle/edit', 'Admin\CycleController@edit');
  Route::post('cycle/edit', 'Admin\CycleController@update');
  Route::get('cycle/delete', 'Admin\CycleController@delete');
  
  
  Route::get('course/add', 'Admin\CourseController@add');
  Route::post('course/create', 'Admin\CourseController@create');
  Route::get('course/index', 'Admin\CourseController@index');
  Route::get('course/edit', 'Admin\CourseController@edit');
  Route::post('course/edit', 'Admin\CourseController@update');
  Route::get('course/delete', 'Admin\CourseController@delete');
  
  
  Route::get('highlight/add', 'Admin\HighlightController@add');
  Route::post('highlight/create', 'Admin\HighlightController@create');
  Route::get('highlight/index', 'Admin\HighlightController@index');
  Route::get('highlight/edit', 'Admin\HighlightController@edit');
  Route::post('highlight/edit', 'Admin\HighlightController@update');
  Route::get('highlight/delete', 'Admin\HighlightController@delete');
  
});




Auth::routes(['register' => false]);
//Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('cycle/index', 'CycleController@index');
Route::get('cycle/show/{id}', 'CycleController@show');
Route::get('cycle/more', 'CycleController@more');
Route::post('cycle/more', 'CycleController@search');
Route::get('cycle/plus', 'CycleController@plus');

