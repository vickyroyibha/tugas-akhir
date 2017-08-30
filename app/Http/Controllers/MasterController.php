<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class MasterController extends Controller
{
    public function show(Request $request)
    {
    	$daftarTabel = collect(config('tableList'));
        if(!is_null($request->q)){
            $daftarTabel = $daftarTabel->filter(function($table) use ($request) {
                return strpos (strtolower($table['name']), strtolower($request->q)) !== false;
            });
        }
    	return view('master', compact('daftarTabel'));
        
    }

}
