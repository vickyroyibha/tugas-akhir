<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdJumlahIbuHamil;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class JumlahIbuHamilController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Jumlah Ibu Hamil 2013',
		'Jumlah Ibu Hamil 2014',
		'Jumlah Ibu Hamil 2015',
		'Jumlah Ibu Hamil 2016'
	];

    private $fileName = 'Estimasi Jumlah Ibu Hamil Menurut Provinsi';

    public function show()
    {
    	$daftarData = MdJumlahIbuHamil::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdJumlahIbuHamil::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
