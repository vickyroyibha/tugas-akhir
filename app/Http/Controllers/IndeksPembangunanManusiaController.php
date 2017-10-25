<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdIndeksPembangunanManusia;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class IndeksPembangunanManusiaController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Indeks Pembangunan Manusia 2013',
		'Indeks Pembangunan Manusia 2014',
		'Indeks Pembangunan Manusia 2015',
		'Indeks Pembangunan Manusia 2016'
	];

    private $fileName = 'Indeks Pembangunan Manusia Menurut Provinsi';

    public function show()
    {
    	$daftarData = MdIndeksPembangunanManusia::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdIndeksPembangunanManusia::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
