<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdKunjunganNeonatalPertama;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class KunjunganNeonatalPertamaController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Kunjungan Neonatal Pertama 2013',
		'Kunjungan Neonatal Pertama 2014',
		'Kunjungan Neonatal Pertama 2015'
	];

    private $fileName = 'Cakupan Kunjungan Neonatal Pertama';

    public function show()
    {
    	$daftarData = MdKunjunganNeonatalPertama::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdKunjunganNeonatalPertama::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
