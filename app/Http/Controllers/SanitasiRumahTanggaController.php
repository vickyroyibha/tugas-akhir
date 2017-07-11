<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdSanitasiRumahTangga;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class SanitasiRumahTanggaController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Sanitasi Rumah Tangga 2013',
		'Data Sanitasi Rumah Tangga 2014',
		'Data Sanitasi Rumah Tangga 2015'
	];

    private $fileName = 'Persentase Rumah Tangga yang Memiliki Akses Terhadap Sanitasi Layak';

    public function show()
    {
    	$daftarData = MdSanitasiRumahTangga::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdSanitasiRumahTangga::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
