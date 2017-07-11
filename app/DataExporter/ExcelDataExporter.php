<?php

namespace App\DataExporter;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class ExcelDataExporter {

	public function export ($daftarData, $columnDisplayList, $fileName) {
		$columnList = $this->getColumnListWithoutID($daftarData);

		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->getActiveSheet();

		foreach ($columnDisplayList as $columnDisplayIndex => $columnDisplay){
			$sheet->setCellValueByColumnAndRow($columnDisplayIndex, 1, $columnDisplay);
		} 

		foreach ($daftarData as $dataIndex => $data) {
			foreach ($columnList as $kolomIndex => $column) {
				$sheet->setCellValueByColumnAndRow($kolomIndex, $dataIndex + 2, $data[$column]);		
			}
		}

		$writer = new Xlsx($spreadsheet);
		$writer->save(storage_path() . '\\app\\public\\' . $fileName . '.xlsx');


	}

	private function getColumnListWithoutID($daftarData) {
        $columnList = array_keys($daftarData[0]);
        array_splice($columnList, 0, 1);

        return $columnList;
    }
}
