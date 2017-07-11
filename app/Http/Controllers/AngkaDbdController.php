<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdAngkaDbd;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class AngkaDbdController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Angka DBD 2013',
		'Angka DBD 2014',
		'Angka DBD 2015'
	];

    private $fileName = 'Angka Kesakitan DBD per 100.000 Penduduk';

    public function show()
    {
    	$daftarData = MdAngkaDbd::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdAngkaDbd::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
