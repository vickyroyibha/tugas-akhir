<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdPenyerapanDanaBok;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class PenyerapanDanaBokController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Penyerapan Dana BOK 2013',
		'Penyerapan Dana BOK 2014',
		'Penyerapan Dana BOK 2015'
	];

    private $fileName = 'Persentase Penyerapan Dana Bantuan Operasional Kesehatan (BOK) ';

    public function show()
    {
    	$daftarData = MdPenyerapanDanaBok::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdPenyerapanDanaBok::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
