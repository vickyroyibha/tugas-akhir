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
					<form action="{{ route ('masterdata')}}">
					<input id="search" type="text" placeholder="cari nama tabel" name="q">
					<button class="btn btn-primary" type="submit"> Cari </button>
					</form>
						<table class="table">
							<tr>
								<th> No </th>
								<th> Nama Tabel </th>
								<th> Pilihan </th>
							</tr>
							@if(!is_null(request()->q) && $daftarTabel->isEmpty())
							<tr>
								<td colspan="3"> Data tidak ditemukan! </td>
							</tr>
							@else
							@foreach($daftarTabel as $index => $tabel)
							<tr>
								<td> {{ $index + 1 }} </td>
								<td> {{ $tabel['name'] }} </td>
								<td>
									<a href="{{ url('daftar-data/' . $tabel['link']) }}">
										<button class="btn"> Lihat <i class="fa fa-eye"></i></button>
									</a>
									<a href="{{ url('excel-exporter/' . $tabel['link']) }}">
										<button class="btn"> Unduh <i class="fa fa-download"></i></button>
									</a>
								</td>
							</tr>
							@endforeach
							@endif
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection
