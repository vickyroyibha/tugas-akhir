<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MdPesertaKb;
use App\Presenter\DaftarDataPresenter;
use App\DataExporter\ExcelDataExporter;

class PesertaKbController extends Controller
{
    private $columnDisplayList = [
		'Nama Provinsi',
		'Peserta KB Baru 2013',
		'Peserta KB Baru 2014',
		'Peserta KB Baru 2015'
	];

    private $fileName = 'Cakupan Peserta KB Baru';

    public function show()
    {
    	$daftarData = MdPesertaKb::all();
    	$daftarData = $daftarData->toArray();

    	$presenter = new DaftarDataPresenter();

    	$daftarData = $presenter->present($daftarData, $this->columnDisplayList);

    	return view('tabel-detail', compact('daftarData'));
    }

    public function exportToExcel()
    {
        $daftarData = MdPesertaKb::all();
        $daftarData = $daftarData->toArray();

        $dataExporter = new ExcelDataExporter();

        $dataExporter->export($daftarData, $this->columnDisplayList, $this->fileName);

        return response()->download(storage_path() . '\\app\\public\\' . $this->fileName . '.xlsx');
    }
}
