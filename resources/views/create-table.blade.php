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
					<div class="panel-heading">Tambah Tabel</div>

					<div class="panel-body">
                        <form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" action="{{ url('tbl') }}">

                        <div class="row m-b-20">
                            <div class="col-md-4 text-right">
                                <h3><i class="fa fa-arrow-circle-o-right"></i> Tabel</h3>
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">Nama Tabel</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control" name="name" value="{{ old('name') }}">

                                @if ($errors->has('name'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">Nama Tabel</label>

                            <div class="col-md-6">
                                <input type="text" class="form-control" name="name" value="{{ old('name') }}">

                                @if ($errors->has('name'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                                @endif
                            </div>
                        </div>

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