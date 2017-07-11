<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdKomplikasiKebidanan;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class KomplikasiKebidananController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Data Komplikasi Bidan 2013',
		'Data Komplikasi Bidan 2014',
		'Data Komplikasi Bidan 2015'
	];

    private $fileName = 'Cakupan Penanganan Komplikasi Kebidanan ';

    public function show()
    {
    	$daftarData = MdKomplikasiKebidanan::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdKomplikasiKebidanan::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
