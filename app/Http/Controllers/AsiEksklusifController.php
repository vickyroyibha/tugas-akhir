<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdAsiEksklusif;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class AsiEksklusifController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Asi Eksklusif 2013',
		'Data Asi Eksklusif 2014',
		'Data Asi Eksklusif 2015'
	];

    private $fileName = 'Cakupan Pemberian ASI Eksklusif pada Bayi 0 - 6 Bulan';

    public function show()
    {
    	$daftarData = MdAsiEksklusif::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdAsiEksklusif::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
