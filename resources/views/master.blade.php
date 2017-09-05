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
					<p>
						<table class="table display" id="datax">
							<thead>
								<tr>
									<th> No </th>
									<th> Nama Tabel </th>
									<th> Pilihan </th>
								</tr>
							</thead>

							<tbody>
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
											<button class="btn"> Tabel <i class="fa fa-table"></i></button>
										</a>
										<a href="{{ url('excel-exporter/' . $tabel['link']) }}">
											<button class="btn"> Unduh <i class="fa fa-download"></i></button>
										</a>
										<a href="{{ route('keterangan', $index + 1) }}">
											<button class="btn"> Info <i class="fa fa-info-circle"></i></button>
										</a>	
									</td>
								</tr>
								@endforeach
								@endif
								</tbody>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

			</div>
		</div>
	</div>
@endsection

@push('scripts')
<script type="text/javascript">
	$(document).ready(function(){
		$('#datax').DataTable();
	});
</script>
@endpush