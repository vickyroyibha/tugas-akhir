<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdRasioPuskesmas;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class RasioPuskesmasController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Rasio Puskesmas 2013',
		'Data Rasio Puskesmas 2014',
		'Data Rasio Puskesmas 2015'
	];

    private $fileName = 'Rasio Puskesmas per 30.000 Penduduk se-Indonesia';

    public function show()
    {
    	$daftarData = MdRasioPuskesmas::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdRasioPuskesmas::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
