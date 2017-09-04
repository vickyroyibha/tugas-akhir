@extends('adminlte::layouts.app')

@section('htmlheader_title')
	{{ trans('adminlte_lang::message.home') }}
@endsection


@section('main-content')
	<div class="container-fluid spark-screen">
		<div class="row">
			<div class="col-md-12">

				<!-- Default box -->
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Tentang</h3>
					</div>
					<div class="box-body">
						<img src="img/uii.png" height="200" width="140">
						<p> </p>
						<p> Dashboard Data Kesehatan Nasional ini dibuat sebagai bagian dari Tugas Akhir.
						<p> Data kesehatan nasional adalah salah satu publikasi data dan informasi yang berisi situasi dan kondisi kesehatan yang cukup komprehensif dan diterbitkan secara berkala tiap tahun oleh Departemen Kesehatan Republik Indonesia (Depkes RI). 
						Profil data kesehatan nasional disusun berdasarkan ketersediaan data, informasi, dan indikator kesehatan yang bersumber dari unit teknis di lingkungan kementerian kesehatan serta institusi lain yang terkait
						 seperti Badan Pusat Statistik (BPS) dan Badan Kependudukan dan Keluarga Berencana Nasional. Data kesehatan nasional dapat diakses melalui situs resmi Depkes RI yaitu <a href="http://www.depkes.go.id/folder/view/01/structure-web-content-publikasi-data.html"> depkes.go.id </a>, 
						 dimana data yang disajikan adalah data kesehatan nasional dari 34 provinsi yang ada di Indonesia dalam kurun waktu 3 tahun yaitu dari tahun 2013, 2014, dan tahun 2015.</p>
						<p>Vicky Vadya Royibha, 2017. </p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
