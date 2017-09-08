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
						<h3 class="box-title">Keterangan Tabel</h3>
					</div>
					<div class="box-body">
						<a href={{ url('master') }}>
						<button class="btn"><i class="fa fa-arrow-left"></i> Kembali </button>
						</a>
							<div class="box-body">
								<p> </p>
								<p> {{ $keterangan_tabel->keterangan }}</p>
							</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
