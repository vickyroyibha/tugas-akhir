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
						<h3 class="box-title">Master Data</h3>
					</div>
					<div class="box-body">
					<input id="search" type="text" placeholder="cari nama tabel">
						<table class="master-table">
							<tr>
								<th> No </th>
								<th> Nama Tabel <i class="fa fa-fw sort-icon fa-sort"></th>
								<th> Pilihan </th>
							</tr>
							@foreach($daftarTabel as $index => $tabel)
							<tr>
								<td> {{ $index + 1 }} </td>
								<td> {{ $tabel['name'] }} </td>
								<td>
									<a href="{{ url('daftar-data/' . $tabel['link']) }}">
										<button class="btn">Lihat <i class="fa fa-eye"></i></button>
									</a>
									<a href="{{ url('excel-exporter/' . $tabel['link']) }}">
										<button class="btn">Unduh<i class="fa fa-download"></i></button>
									</a>
								</td>
							</tr>
							@endforeach
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
