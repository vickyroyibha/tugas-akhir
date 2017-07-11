<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdRasioDokterUmum;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class RasioDokterUmumController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Rasio Dokter Umum 2013',
		'Rasio Dokter Umum 2014',
		'Rasio Dokter Umum 2015'
	];

    private $fileName = 'Rasio Dokter Umum Terhadap 100.000 Penduduk di Indonesia';

    public function show()
    {
    	$daftarData = MdRasioDokterUmum::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdRasioDokterUmum::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
