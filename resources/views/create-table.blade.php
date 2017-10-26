@extends('adminlte::layouts.app')

@section('htmlheader_title')
	Tambah Tabel
@endsection

@section('contentheader_title')
    Tambah Tabel
@endsection

@section('main-content')
	<div class="container-fluid spark-screen">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">Tambah Data</div>

					<div class="panel-body">
                        <form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" action="{{ url('create-table') }}">

                        {{ csrf_field() }}

                        <div class="row m-b-20">
                            <div class="col-md-4 text-right">
                                <h3><i class="fa fa-arrow-circle-o-right"></i> Tabel</h3>
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('jenis') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">Jenis Data</label>

                            <div class="col-md-6">
                                <select name="jenis" class="form-control">
                                    @foreach($jenis as $item)
                                        <option
                                            value="{{ $item['table'] }}"
                                            @if ($item['table'] == old('jenis')) {{ " selected" }} @endif
                                        >
                                            {{ $item['name'] }}
                                        </option>
                                    @endforeach
                                </select>

                                @if ($errors->has('jenis'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('jenis') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>

                        @foreach($provinces as $province)
                            <div class="form-group{{ $errors->has($province['slug']) ? ' has-error' : '' }}">
                                <label class="col-md-4 control-label">Provinsi {{ $province['name'] }}</label>

                                <div class="col-md-6">
                                    <input type="number" step="0.001" class="form-control" name="{{ $province['slug'] }}" value="{{ old($province['slug']) }}">

                                    @if ($errors->has($province['slug']))
                                    <span class="help-block">
                                        <strong>{{ $errors->first($province['slug']) }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                        @endforeach

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <a href="{{ URL::previous() }}" class="btn btn-default">Batal</a>
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-save"></i> Simpan
                                </button>
                            </div>
                        </div>

                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection