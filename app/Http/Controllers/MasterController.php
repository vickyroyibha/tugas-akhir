<?php

namespace App\Http\Controllers;

use DB;
use Carbon\Carbon;
use App\TableList;
use Illuminate\Http\Request;

class MasterController extends Controller
{
    protected $provinces = [
        // List Nama Provinsi
        'Nangroe Aceh Darussalam',
        'Sumatera Utara',
        'Sumatera Barat',
        'Riau',
        'Jambi',
        'Sumatera Selatan',
        'Bengkulu',
        'Lampung',
        'Bangka Belitung',
        'Kepulauan Riau',
        'DKI Jakarta',
        'Jawa Barat',
        'Jawa Tengah',
        'DI Yogyakarta',
        'Jawa Timur',
        'Banten',
        'Bali',
        'Nusa Tenggara Barat',
        'Nusa Tenggara Timur',
        'Kalimantan Barat',
        'Kalimantan Tengah',
        'Kalimantan Selatan',
        'Kalimantan Timur',
        'Kalimantan Utara',
        'Sulawesi Utara',
        'Sulawesi Tengah',
        'Sulawesi Selatan',
        'Sulawesi Tenggara',
        'Gorontalo',
        'Sulawesi Barat',
        'Maluku',
        'Maluku Utara',
        'Papua Barat',
        'Papua'
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
            [ // Tabel 1
                'table' => 'md_angka_dbd',
                'name' => 'Tabel Angka Kesakitan DBD per 100.000 Penduduk',
            ],
            [ // Tabel 2
                'table' => 'md_asi_eksklusif',
                'name' => 'Tabel Cakupan Pemberian ASI Eksklusif pada Bayi 0 - 6 Bulan',
            ],
            [ // Tabel 3
                'table' => 'md_cacat_kusta',
                'name' => 'Tabel Angka Cacat Tingkat II Kusta per 100.000 Penduduk',
            ],
            [ // Tabel 4
                'table' => 'md_dasar_lengkap',
                'name' => 'Tabel Persentase Cakupan Imunisasi Dasar Lengkap Pada Bayi',
            ],
            [ // Tabel 5
                'table' => 'md_desa_uci',
                'name' => 'Tabel Cakupan Desa/Kelurahan UCI (Universal Child Immunization)',
            ],
            [ // Tabel 6
                'table' => 'md_imunisasi_campak',
                'name' => 'Tabel Persentase Cakupan Imunisasi Campak Pada Bayi',
            ],
            [ // Tabel 7
                'table' => 'md_incidencerate_campak',
                'name' => 'Tabel Incidence Rate Campak per 100.000 Penduduk',
            ],
            [ // Tabel 8
                'table' => 'md_kasus_tb',
                'name' => 'Tabel Angka Notifikasi Kasus TB Paru BTA+ per 100.000 Penduduk',
            ],
            [ // Tabel 9
                'table' => 'md_komplikasi_kebidanan',
                'name' => 'Tabel Cakupan Penanganan Komplikasi Kebidanan',
            ],
            [ // Tabel 10
                'table' => 'md_komplikasi_neonatal',
                'name' => 'Tabel Cakupan Penanganan Komplikasi Neonatal',
            ],
            [ // Tabel 11
                'table' => 'md_neonatal_lengkap',
                'name' => 'Tabel Cakupan Kunjungan Neonatal Lengkap',
            ],
            [ // Tabel 12
                'table' => 'md_neonatal_pertama',
                'name' => 'Tabel Cakupan Kunjungan Neonatal Pertama',
            ],
            [ // Tabel 13
                'table' => 'md_pelayanan_ibuhamil',
                'name' => 'Tabel Cakupan Pelayanan Kesehatan Ibu Hamil K4',
            ],
            [ // Tabel 14
                'table' => 'md_pertolongan_persalinan',
                'name' => 'Tabel Cakupan Pertolongan Persalinan oleh Tenaga Kesehatan',
            ],
            [ // Tabel 15
                'table' => 'md_peserta_kb',
                'name' => 'Tabel Cakupan Peserta KB Baru',
            ],
            [ // Tabel 16
                'table' => 'md_proporsi_tb',
                'name' => 'Tabel Proporsi BTA+ diantara Seluruh Kasus TB Paru',
            ],
            [ // Tabel 17
                'table' => 'md_rasio_bidan',
                'name' => 'Tabel Rasio Bidan Terhadap 100.000 Penduduk di Indonesia',
            ],
            [ // Tabel 18
                'table' => 'md_rasio_dokterumum',
                'name' => 'Tabel Rasio Dokter Umum Terhadap 100.000 Penduduk di Indonesia',
            ],
            [ // Tabel 19
                'table' => 'md_rasio_perawat',
                'name' => 'Tabel Rasio Perawat Terhadap 100.000 Penduduk di Indonesia',
            ],
            [ // Tabel 20
                'table' => 'md_rasio_puskesmas',
                'name' => 'Tabel Rasio Puskesmas per 30.000 Penduduk se-Indonesia',
            ],
            [ // Tabel 21
                'table' => 'md_rasio_tempattidur',
                'name' => 'Tabel Rasio Tempat Tidur Rumah Sakit per 1000 Penduduk',
            ],
            [ // Tabel 22
                'table' => 'md_spesimen_adekuatafp',
                'name' => 'Tabel Persentase Spesimen Adekuat AFP',
            ],
            [ // Tabel 23
                'table' => 'md_tatalaksana_pkpr',
                'name' => 'Tabel Persentase Kabupaten/Kota dengan Minimal 4 Puskesmas Mampu Tatalaksana PKPR',
            ],
            [ // Tabel 24
                'table' => 'md_angka_melek',
                'name' => 'Tabel Angka Melek Huruf (Persentase Penduduk Umur 15 Tahun ke Atas Yang Melek Huruf)',
            ],
            [ // Tabel 25
                'table' => 'md_jumlah_balita',
                'name' => 'Tabel Estimasi Jumlah Balita (0-4 Tahun) Menurut Provinsi',
            ],
            [ // Tabel 26
                'table' => 'md_jumlah_ibuhamil',
                'name' => 'Tabel Rasio Perawat Terhadap 100.000 Penduduk di Indonesia',
            ],
            [ // Tabel 27
                'table' => 'md_jumlah_penduduk',
                'name' => 'Tabel Estimasi Penduduk Menurut Provinsi',
            ],
            [ // Tabel 28
                'table' => 'md_indeks_gini',
                'name' => 'Tabel Indeks Gini Menurut Provinsi',
            ],
            [ // Tabel 29
                'table' => 'md_indeks_pembangunan_manusia',
                'name' => 'Tabel Indeks Pembangunan Manusia Menurut Provinsi',
            ],
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
