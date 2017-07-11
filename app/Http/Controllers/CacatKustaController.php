<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdCacatKusta;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class CacatKustaController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Cacat Kusta 2013',
		'Data Cacat Kusta 2014',
		'Data Cacat Kusta 2015'
	];

    private $fileName = 'Angka Cacat Tingkat II Kusta per 100.000 Penduduk';

    public function show()
    {
    	$daftarData = MdCacatKusta::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdCacatKusta::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
