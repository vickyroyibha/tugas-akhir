@extends('adminlte::layouts.app')

@section('htmlheader_title')
	{{ trans('adminlte_lang::message.home') }}
@endsection

@section('main-content')
	<div class="container-fluid spark-screen">
        <iframe width="1065" height="600" src="https://app.powerbi.com/view?r=eyJrIjoiZjI4ZmEwZDYtY2YyYS00NTYwLThhODctZDZlZTZkMDA5YjFkIiwidCI6ImJkMDgwN2VjLWM5MzAtNDlhZS05OTM5LTM4YWJkN2UyZmYzNSIsImMiOjEwfQ%3D%3D"
		frameborder="0" allowFullScreen="true"></iframe>
	</div>
@endsection
