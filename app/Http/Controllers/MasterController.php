<?php

namespace App\Http\Controllers;

use DB;
use Carbon\Carbon;
use App\TableList;
use Illuminate\Http\Request;

class MasterController extends Controller
{
    protected $provinces = [
        'Nangroe Aceh Darussalam',
        // INI DI TULIS SEMUA NAMA PROVINSINYA
    ];

    public function __construct()
    {
        $this->provinces = array_map(function ($province) {
            return [
                'name' => $province,
                'slug' => title_case(str_slug($province, '_')),
            ];
        }, $this->provinces);
    }

    public function createTable(Request $request)
    {
        $provinces = $this->provinces;
        $jenis = [
            [
                'table' => 'md_angka_dbd',
                'name' => 'Angka DBD',
            ],
            // INI DITULIS SEMUA NAMA TABELNYA
            // [
            //     'table' => 'md_angka_XXX',
            //     'name' => 'Angka XXX',
            // ],
        ];

        return view('create-table', compact('provinces', 'jenis'));
    }

    public function storeTableData(Request $request)
    {
        $tableName = $request->jenis;

        $lastColumnName = DB::select(
            'SELECT COLUMN_NAME, ORDINAL_POSITION FROM information_schema.COLUMNS '.
            sprintf("%s = '%s' ", 'WHERE TABLE_SCHEMA', env('DB_DATABASE')).
            sprintf("%s = '%s' ", 'AND TABLE_NAME', $tableName).
            'ORDER BY ORDINAL_POSITION DESC LIMIT 1'
        );

        $lastColumnName = ($t = array_get($lastColumnName, '0', null)) ? $t->COLUMN_NAME : null;

        if (! is_null($lastColumnName)) {
            preg_match_all('!\d+!', $lastColumnName, $matches);
            $year = (int) array_get($matches, '0.0', 0);

            $nextYear = Carbon::createFromDate(2000, 1, 1)->addYears($year+1)->format('y');
            $nextColumnName = str_replace($year, $nextYear, $lastColumnName);
           
            DB::statement(sprintf('ALTER TABLE %s ADD %s DOUBLE AFTER %s', $tableName, $nextColumnName, $lastColumnName));

            foreach ($this->provinces as $province) {
                $data = $request->get($province['slug']);

                DB::table($tableName)->where('nama_provinsi', $province['name'])->update([$nextColumnName => $data]);
            }
        } else {
            abort(422, 'ERROR');
        }

        return redirect()->back();
    }

    public function show(Request $request)
    {
    	$daftarTabel = TableList::all();

        if (!is_null($request->category)) {
            $daftarTabel = TableList::whereCategories($request->category)->get();
        }

        if(!is_null($request->q)){
            $daftarTabel = $daftarTabel->filter(function($table) use ($request) {
                return strpos (strtolower($table['name']), strtolower($request->q)) !== false;
            });
        }
        
    	return view('master', compact('daftarTabel'));
     }
}
