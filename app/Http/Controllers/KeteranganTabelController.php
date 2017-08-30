<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdAngkaDbd;

class KeteranganTabelController extends Controller
{
    public function show(Request $request, $id)
    {
        $keterangan = MdAngkaDbd::where('id_dbd', $id)->first();
    	return view('keterangan-tabel', compact('keterangan'));
        
    }
}
