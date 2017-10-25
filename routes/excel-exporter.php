<?php

Route::group(['prefix' => 'excel-exporter'], function () {
	Route::get('angka-dbd', 'AngkaDbdController@exportToExcel');
   	Route::get('asi-eks', 'AsiEksklusifController@exportToExcel');
   	Route::get('cacat-kusta', 'CacatKustaController@exportToExcel');
   	Route::get('dasar-lengkap', 'DasarLengkapController@exportToExcel');
   	Route::get('desa-uci', 'DesaUciController@exportToExcel');
   	Route::get('imunisasi-campak', 'ImunisasiCampakController@exportToExcel');
	Route::get('incidencerate-campak', 'IncidenceRateCampakController@exportToExcel');
   	Route::get('kasus-tb', 'KasusTbController@exportToExcel');
   	Route::get('komplikasi-kebidanan', 'KomplikasiKebidananController@exportToExcel');
   	Route::get('komplikasi-neonatal', 'KomplikasiNeonatalController@exportToExcel');
   	Route::get('neonatal-lengkap', 'KunjunganNeonatalLengkapController@exportToExcel');
   	Route::get('neonatal-pertama', 'KunjunganNeonatalPertamaController@exportToExcel');
   	Route::get('pelayanan-ibuhamil', 'PelayananIbuhamilController@exportToExcel');
   	Route::get('pertolongan-persalinan', 'PertolonganPersalinanController@exportToExcel');
   	Route::get('peserta-kb', 'PesertaKbController@exportToExcel');
   	Route::get('proporsi-tb', 'ProporsiTbController@exportToExcel');
   	Route::get('rasio-bidan', 'RasioBidanController@exportToExcel');
   	Route::get('rasio-dokterumum', 'RasioDokterUmumController@exportToExcel');
   	Route::get('rasio-perawat', 'RasioPerawatController@exportToExcel');
   	Route::get('rasio-puskesmas', 'RasioPuskesmasController@exportToExcel');
   	Route::get('rasio-tempattidur', 'RasioTempatTidurController@exportToExcel');
   	Route::get('spesimen-adekuat', 'SpesimenAdekuatAfpController@exportToExcel');
   	Route::get('tatalaksana-pkpr', 'TatalaksanaPkprController@exportToExcel');
	Route::get('angka-melek', 'AngkaMelekController@exportToExcel');
	Route::get('jumlah-balita', 'JumlahBalitaController@exportToExcel');
	Route::get('jumlah-ibuhamil', 'JumlahIbuHamilController@exportToExcel');
	Route::get('jumlah-penduduk', 'JumlahPendudukController@exportToExcel');
	Route::get('indeks-gini', 'IndeksGiniController@exportToExcel');
	Route::get('indeks-pembangunan-manusia', 'IndeksPembangunanManusiaController@exportToExcel');
});