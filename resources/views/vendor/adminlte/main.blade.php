@extends('adminlte::layouts.app')

@section('htmlheader_title')
	{{ trans('adminlte_lang::message.home') }}
@endsection

@section('main-content')
    <div class="container-fluid spark-screen">
        <iframe width="1070" height="600" src="https://app.powerbi.com/view?r=eyJrIjoiNzg2OWQyNTEtMGU1NS00ODRkLWExNzEtNmUwMmE3YzgyNGM4IiwidCI6ImJkMDgwN2VjLWM5MzAtNDlhZS05OTM5LTM4YWJkN2UyZmYzNSIsImMiOjEwfQ%3D%3D"
		frameborder="0" allowFullScreen="true"></iframe>
	</div>
@endsection
