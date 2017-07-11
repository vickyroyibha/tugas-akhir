<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdTatalaksanaPkpr;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class TatalaksanaPkprController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Puskesmas Tatalaksana PKPR 2013',
		'Puskesmas Tatalaksana PKPR 2014',
		'Puskesmas Tatalaksana PKPR 2015'
	];

    private $fileName = 'Persentase Kabupaten atau Kota dengan Minimal 4 Puskesmas Mampu Tatalaksana PKPR';

    public function show()
    {
    	$daftarData = MdTatalaksanaPkpr::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdTatalaksanaPkpr::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
