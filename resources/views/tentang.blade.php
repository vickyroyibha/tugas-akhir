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
						<p>Dashboard Data Kesehatan Nasional ini dibuat sebagai bagian dari Tugas Akhir.
						<p>Data yang diambil adalah data kesehatan nasional dari 34 provinsi yang ada di Indonesia dalam kurun waktu 3 tahun yaitu dari tahun 2013, 2014, dan tahun 2015.</p>
						<p>Vicky Vadya Royibha, 2017.</p>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
