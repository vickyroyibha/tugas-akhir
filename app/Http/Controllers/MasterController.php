<?php

namespace App\Http\Controllers;

use App\TableList;
use Illuminate\Http\Request;

class MasterController extends Controller
{
    public function createTable(Request $request)
    {
        return view('create-table');
    }

    public function show(Request $request)
    {
    	$daftarTabel = TableList::all();

        if (!is_null($request->category)) {
            $daftarTabel = TableList::whereCategories($request->category)->get();
        }

        if(!is_null($request->q)){
            $daftarTabel = $daftarTabel->filter(function($table) use ($request) {
                return strpos (strtolower($table['name']), strtolower($request->q)) !== false;
            });
        }
        
    	return view('master', compact('daftarTabel'));
     }
}
