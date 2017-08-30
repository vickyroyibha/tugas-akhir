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
						<h3 class="box-title"> Detail Tabel </h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i></button>
							<button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i></button>
						</div>
					</div>
					<div class="box-body">
						<a href={{ url('master') }}>
						<button class="btn"><i class="fa fa-arrow-left"></i> Kembali </button>
						</a>
						<table class="table">
							<tr>
								<th> No </th>
								@php
									$columns = array_keys($daftarData[0]);
									array_shift($columns);
								@endphp
								@foreach($columns as $columnName)
									<th> {{ $columnName }} </th>
								@endforeach
							</tr>

							@foreach($daftarData as $nomor => $data)
							<tr>
								<td> {{ $nomor + 1 }} </td>
								@foreach($columns as $columnName)
									<td> {{ $data[$columnName] }} </td>
								@endforeach
								<td>
									<a href="{{ url('keterangan-tabel/' . $data['id']) }}">
										<button class="btn"> Keterangan <i class="fa fa-info-circle"></i></button>
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
