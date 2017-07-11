<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdKomplikasiNeonatal;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class KomplikasiNeonatalController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Komplikasi Neonatal 2013',
		'Data Komplikasi Neonatal 2014',
		'Data Komplikasi Neonatal 2015'
	];

    private $fileName = 'Cakupan Penanganan Komplikasi Neonatal';

    public function show()
    {
    	$daftarData = MdKomplikasiNeonatal::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdKomplikasiNeonatal::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
