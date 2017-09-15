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
    return redirect('login');
});

Route::group(['middleware' => 'auth'], function () {
   Route::get('home1', 'Home1Controller@show');
   Route::get('home2', 'Home2Controller@show');
   Route::get('home3', 'Home3Controller@show');
   Route::get('home4', 'Home4Controller@show');
   Route::get('master', 'MasterController@show')->name("masterdata");
   Route::get('keterangan-tabel/{id}', 'KeteranganTabelController@show')->name("keterangan");
   Route::get('tentang', 'TentangController@show');

   include 'daftar-data.php';
   include 'excel-exporter.php';
   
   

    //Please do not remove this if you want adminlte:route and adminlte:link commands to works correctly.
    #adminlte_routes
});
