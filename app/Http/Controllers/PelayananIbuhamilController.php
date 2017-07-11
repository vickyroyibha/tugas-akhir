<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdPelayananIbuhamil;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class PelayananIbuhamilController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Pelayanan Kesehatan Ibu Hamil 2013',
		'Pelayanan Kesehatan Ibu Hamil 2014',
		'Pelayanan Kesehatan Ibu Hamil 2015'
	];

    private $fileName = 'Cakupan Pelayanan Kesehatan Ibu Hamil K4';

    public function show()
    {
    	$daftarData = MdPelayananIbuhamil::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdPelayananIbuhamil::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
