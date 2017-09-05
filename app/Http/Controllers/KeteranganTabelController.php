<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\KeteranganTabel;

class KeteranganTabelController extends Controller
{
    public function show(Request $request, $id)
    {
        $keterangan_tabel = KeteranganTabel::where('id_tablelist', $id)->firstOrFail();
    	return view('keterangan-tabel', compact('keterangan_tabel'));
        
    }
}
