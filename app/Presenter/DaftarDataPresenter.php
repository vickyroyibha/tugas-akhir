<?php

namespace App\Presenter;

class DaftarDataPresenter {
	
	public function present($daftarData, $columnDisplayList) {
		$columnList = $this->getColumnListWithoutID($daftarData);

    	$daftarDataTemp = [];

    	foreach ($daftarData as $data) {
    		$dataTemp = [];

			$dataTemp['id'] = reset($data);
    		foreach ($columnList as $index => $column) {
    			$dataTemp[$columnDisplayList[$index]] = $data[$column];	
    		}
    		$daftarDataTemp[] = $dataTemp;
    	}

    	return $daftarDataTemp;
	}

    private function getColumnListWithoutID($daftarData) {
        $columnList = array_keys($daftarData[0]);
        array_splice($columnList, 0, 1);

        return $columnList;
    }
}