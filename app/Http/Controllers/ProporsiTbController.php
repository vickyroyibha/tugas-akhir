<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdProporsiTb;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class ProporsiTbController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Proporsi BTA+ 2013',
		'Data Proporsi BTA+ 2014',
		'Data Proporsi BTA+ 2015'
	];

    private $fileName = 'Proporsi BTA+ diantara Seluruh Kasus TB Paru';

    public function show()
    {
    	$daftarData = MdProporsiTb::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdProporsiTb::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
