<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdIndeksGini;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class IndeksGiniController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Indeks Gini 2013',
		'Indeks Gini 2014',
		'Indeks Gini 2015',
		'Indeks Gini 2016'
	];

    private $fileName = 'Indeks Gini Menurut Provinsi';

    public function show()
    {
    	$daftarData = MdIndeksGini::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdIndeksGini::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
