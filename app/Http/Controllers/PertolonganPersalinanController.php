<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdPertolonganPersalinan;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class PertolonganPersalinanController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Pertolongan Persalinan 2013',
		'Data Pertolongan Persalinan 2014',
		'Data Pertolongan Persalinan 2015'
	];

    private $fileName = 'Cakupan Pertolongan Persalinan oleh Tenaga Kesehatan';

    public function show()
    {
    	$daftarData = MdPertolonganPersalinan::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdPertolonganPersalinan::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
