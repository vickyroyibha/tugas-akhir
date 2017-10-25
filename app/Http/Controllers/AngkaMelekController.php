<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdAngkaMelek;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class AngkaMelekController extends Controller
{
	private $columnDisplayList = [
		'Nama Provinsi',
		'Angka Melek Huruf 2013',
		'Angka Melek Huruf 2014',
		'Angka Melek Huruf 2015',
		'Angka Melek Huruf 2016'
	];

    private $fileName = 'Angka Melek Huruf (Persentase Penduduk Umur 15 Tahun ke Atas Yang Melek Huruf)';

    public function show()
    {
    	$daftarData = MdAngkaMelek::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdAngkaMelek::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
