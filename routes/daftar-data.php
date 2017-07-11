<?php

Route::group(['prefix' => 'daftar-data'], function () {
   	Route::get('angka-dbd', 'AngkaDbdController@show');
   	Route::get('asi-eks', 'AsiEksklusifController@show');
   	Route::get('cacat-kusta', 'CacatKustaController@show');
   	Route::get('dasar-lengkap', 'DasarLengkapController@show');
   	Route::get('desa-uci', 'DesaUciController@show');
   	Route::get('imunisasi-campak', 'ImunisasiCampakController@show');
   	Route::get('incidencerate-campak', 'IncidenceRateCampakController@show');
   	Route::get('kasus-tb', 'KasusTbController@show');
   	Route::get('komplikasi-kebidanan', 'KomplikasiKebidananController@show');
   	Route::get('komplikasi-neonatal', 'KomplikasiNeonatalController@show');
   	Route::get('neonatal-lengkap', 'KunjunganNeonatalLengkapController@show');
   	Route::get('neonatal-pertama', 'KunjunganNeonatalPertamaController@show');
   	Route::get('pelayanan-ibuhamil', 'PelayananIbuhamilController@show');
   	Route::get('penyerapan-danabok', 'PenyerapanDanaBokController@show');
   	Route::get('pertolongan-persalinan', 'PertolonganPersalinanController@show');
   	Route::get('peserta-kb', 'PesertaKbController@show');
   	Route::get('proporsi-tb', 'ProporsiTbController@show');
   	Route::get('rasio-bidan', 'RasioBidanController@show');
   	Route::get('rasio-dokterumum', 'RasioDokterUmumController@show');
   	Route::get('rasio-perawat', 'RasioPerawatController@show');
   	Route::get('rasio-puskesmas', 'RasioPuskesmasController@show');
   	Route::get('rasio-tempattidur', 'RasioTempatTidurController@show');
   	Route::get('sanitasi-rumahtangga', 'SanitasiRumahTanggaController@show');
   	Route::get('spesimen-adekuat', 'SpesimenAdekuatAfpController@show');
   	Route::get('tatalaksana-pkpr', 'TatalaksanaPkprController@show');
});