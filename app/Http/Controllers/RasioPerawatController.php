<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdRasioPerawat;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class RasioPerawatController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Rasio Perawat 2013',
		'Data Rasio Perawat 2014',
		'Data Rasio Perawat 2015'
	];

    private $fileName = 'Rasio Perawat Terhadap 100.000 Penduduk di Indonesia';

    public function show()
    {
    	$daftarData = MdRasioPerawat::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdRasioPerawat::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
