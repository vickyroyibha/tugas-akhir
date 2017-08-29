<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class MasterController extends Controller
{
    public function show(Request $request)
    {
    	$daftarTabel = config('tableList');
    	return view('master', compact('daftarTabel'));
    }
}
