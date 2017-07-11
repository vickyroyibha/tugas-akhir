<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdDasarLengkap;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class DasarLengkapController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Imunisasi Dasar 2013',
		'Data Imunisasi Dasar 2014',
		'Data Imunisasi Dasar 2015'
	];

    private $fileName = 'Persentase Cakupan Imunisasi Dasar Lengkap Pada Bayi';

    public function show()
    {
    	$daftarData = MdDasarLengkap::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdDasarLengkap::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
