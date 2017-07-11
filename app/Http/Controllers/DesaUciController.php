<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdDesaUci;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class DesaUciController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Desa UCI 2013',
		'Data Desa UCI 2014',
		'Data Desa UCI 2015'
	];

    private $fileName = 'Cakupan Desa atau Kelurahan UCI (Universal Child Immunization)';

    public function show()
    {
    	$daftarData = MdDesaUci::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdDesaUci::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
