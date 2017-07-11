<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdSpesimenAdekuatAfp;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class SpesimenAdekuatAfpController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Spesimen Adekuat AFP 2013',
		'Spesimen Adekuat AFP 2014',
		'Spesimen Adekuat AFP 2015'
	];

    private $fileName = 'Persentase Spesimen Adekuat AFP';

    public function show()
    {
    	$daftarData = MdSpesimenAdekuatAfp::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdSpesimenAdekuatAfp::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
