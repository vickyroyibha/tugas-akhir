<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdJumlahBalita;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class JumlahBalitaController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Jumlah Balita 2013',
		'Jumlah Balita 2014',
		'Jumlah Balita 2015',
		'Jumlah Balita 2016'
	];

    private $fileName = 'Estimasi Jumlah Balita (0-4 Tahun) Menurut Provinsi';

    public function show()
    {
    	$daftarData = MdJumlahBalita::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdJumlahBalita::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
