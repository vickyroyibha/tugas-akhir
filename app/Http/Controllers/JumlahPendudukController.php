<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdJumlahPenduduk;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class JumlahPendudukController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Jumlah Penduduk 2013',
		'Jumlah Penduduk 2014',
		'Jumlah Penduduk 2015',
		'Jumlah Penduduk 2016'
	];

    private $fileName = 'Estimasi Jumlah Penduduk Menurut Provinsi';

    public function show()
    {
    	$daftarData = MdJumlahPenduduk::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdJumlahPenduduk::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
