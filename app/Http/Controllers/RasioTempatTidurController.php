<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdRasioTempatTidur;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class RasioTempatTidurController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Rasio Tempat Tidur 2013',
		'Data Rasio Tempat Tidur 2014',
		'Data Rasio Tempat Tidur 2015'
	];

    private $fileName = 'Rasio Tempat Tidur Rumah Sakit per 10.000 Penduduk';

    public function show()
    {
    	$daftarData = MdRasioTempatTidur::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdRasioTempatTidur::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
