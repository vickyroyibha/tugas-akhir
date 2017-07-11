<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdKunjunganNeonatalLengkap;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class KunjunganNeonatalLengkapController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Kunjungan Neonatal Lengkap 2013',
		'Kunjungan Neonatal Lengkap 2014',
		'Kunjungan Neonatal Lengkap 2015'
	];

    private $fileName = 'Cakupan Kunjungan Neonatal Lengkap';

    public function show()
    {
    	$daftarData = MdKunjunganNeonatalLengkap::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdKunjunganNeonatalLengkap::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
