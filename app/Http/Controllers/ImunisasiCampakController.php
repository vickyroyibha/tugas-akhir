<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdImunisasiCampak;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class ImunisasiCampakController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Imunisasi Campak 2013',
		'Data Imunisasi Campak 2014',
		'Data Imunisasi Campak 2015'
	];

    private $fileName = 'Persentase Cakupan Imunisasi Campak Pada Bayi';

    public function show()
    {
    	$daftarData = MdImunisasiCampak::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdImunisasiCampak::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
