<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdKasusTb;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class KasusTbController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Kasus TB 2013',
		'Data Kasus TB 2014',
		'Data Kasus TB 2015'
	];

    private $fileName = 'DataKasusTB';

    public function show()
    {
    	$daftarData = MdKasusTb::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdKasusTb::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
