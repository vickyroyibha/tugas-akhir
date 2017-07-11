<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdIncidenceRateCampak;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class IncidenceRateCampakController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'IncidenceRate Campak 2013',
		'IncidenceRate Campak 2014',
		'IncidenceRate Campak 2015'
	];

    private $fileName = 'Incidence Rate Campak per 100.000 Penduduk';

    public function show()
    {
    	$daftarData = MdIncidenceRateCampak::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdIncidenceRateCampak::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
