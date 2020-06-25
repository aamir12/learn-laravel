<?php
Route::get('/',function(){
  return view('welcome');
});

Route::resource('users','UsersController');
//it alias the route
Route::get('users/{id}','UsersController@show')->name('userDetail');

Route::resource('roles','RolesController');
Route::resource('profiles', 'ProfilesController');
Route::resource('posts', 'PostsController');
Route::get('/posts/{id}/delete','PostsController@destroy');