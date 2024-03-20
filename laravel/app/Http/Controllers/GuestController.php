<?php

namespace App\Http\Controllers;

use App\Desa;
use Illuminate\Support\Facades\DB;
use App\KategoriKomoditas;
use App\Komoditas;
use App\UserInfo;
use App\KategoriKomoditasDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use stdClass;

class GuestController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $kategoriKomoditasDetail = KategoriKomoditasDetail::with(['kategori_komoditas'])->get();
        if ($user) {
            return redirect()->route('beranda');
        }
        $komoditas = Komoditas::where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->where('status', true)->get();
        date_default_timezone_set('Asia/Jakarta');
        // Menampilkan tanggal
        // Array nama-nama hari dalam bahasa Indonesia
        $hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");

        // Format tanggal dan hari
        $tanggal = date('j');
        $nama_hari = $hari[date('w')];

        // Format bulan dan tahun
        $bulan = date('n');
        $tahun = date('Y');

        // Array nama-nama bulan dalam bahasa Indonesia
        $bulan_array = array("", "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
        $nama_bulan = $bulan_array[$bulan];
        $tanggal = $nama_hari . ", " . $tanggal . " " . $nama_bulan . " " . $tahun;

        $kategoriKomoditasDetail = KategoriKomoditasDetail::get();
        $kategoriKomoditasDetailAda = Komoditas::select('kategori_komoditas_detail_id as id', DB::raw('SUM(kuantitas) as total_komoditas'), DB::raw('SUM(terjual) as terjual'))->groupBy('kategori_komoditas_detail_id')->get();
        return view('toko.index', compact(
            'komoditas',
            'tanggal',
            'kategoriKomoditasDetail',
            'kategoriKomoditasDetailAda'
        ));
    }

    public function indexStatistik()
    {
        $userInfo = UserInfo::all();
        return view('toko.statistik', compact(
            'userInfo'
        ));
    }

    public function indexStatistikDesa()
    {
        $desa = Desa::all();
        return view('toko.statistik-desa', compact(
            'desa'
        ));
    }

    public function showStatistik(Request $request)
    {
        $waktu = explode("-", $request->bulan);
        $totalDay = cal_days_in_month(CAL_GREGORIAN, $waktu[1], $waktu[0]);

        $petani = UserInfo::findOrFail($request->petani);

        $komoditasCabaiRawit = [];
        $komoditasCabaiKeriting = [];
        $komoditasCabaiMerah = [];
        $komoditasCabaiPutih = [];
        $komoditasCabaiBubuk = [];
        $komoditasCabaiPaprika = [];

        for ($i = 1; $i <= $totalDay; $i++) {
            $cabaiRawit = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 1)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();
            $cabaiKeriting = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 2)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();
            $cabaiMerah = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 3)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();
            $cabaiPutih = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 4)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();
            $cabaiBubuk = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 5)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();
            $cabaiPaprika = Komoditas::select('harga_jual', 'kuantitas')->where('user_info_id', $request->petani)->where('kategori_komoditas_detail_id', 6)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->first();

            $objekCabaiRawit = new stdClass();
            $objekCabaiKeriting = new stdClass();
            $objekCabaiMerah = new stdClass();
            $objekCabaiPutih = new stdClass();
            $objekCabaiBubuk = new stdClass();
            $objekCabaiPaprika = new stdClass();

            if ($cabaiRawit) {
                $objekCabaiRawit->harga_jual = $cabaiRawit->harga_jual;
                $objekCabaiRawit->kuantitas = $cabaiRawit->kuantitas;
            } else {
                $objekCabaiRawit->harga_jual = '-';
                $objekCabaiRawit->kuantitas = '-';
            }

            if ($cabaiKeriting) {
                $objekCabaiKeriting->harga_jual = $cabaiKeriting->harga_jual;
                $objekCabaiKeriting->kuantitas = $cabaiKeriting->kuantitas;
            } else {
                $objekCabaiKeriting->harga_jual = '-';
                $objekCabaiKeriting->kuantitas = '-';
            }

            if ($cabaiMerah) {
                $objekCabaiMerah->harga_jual = $cabaiMerah->harga_jual;
                $objekCabaiMerah->kuantitas = $cabaiMerah->kuantitas;
            } else {
                $objekCabaiMerah->harga_jual = '-';
                $objekCabaiMerah->kuantitas = '-';
            }

            if ($cabaiPutih) {
                $objekCabaiPutih->harga_jual = $cabaiPutih->harga_jual;
                $objekCabaiPutih->kuantitas = $cabaiPutih->kuantitas;
            } else {
                $objekCabaiPutih->harga_jual = '-';
                $objekCabaiPutih->kuantitas = '-';
            }

            if ($cabaiBubuk) {
                $objekCabaiBubuk->harga_jual = $cabaiBubuk->harga_jual;
                $objekCabaiBubuk->kuantitas = $cabaiBubuk->kuantitas;
            } else {
                $objekCabaiBubuk->harga_jual = '-';
                $objekCabaiBubuk->kuantitas = '-';
            }

            if ($cabaiPaprika) {
                $objekCabaiPaprika->harga_jual = $cabaiPaprika->harga_jual;
                $objekCabaiPaprika->kuantitas = $cabaiPaprika->kuantitas;
            } else {
                $objekCabaiPaprika->harga_jual = '-';
                $objekCabaiPaprika->kuantitas = '-';
            }

            array_push($komoditasCabaiRawit, $objekCabaiRawit);
            array_push($komoditasCabaiKeriting, $objekCabaiKeriting);
            array_push($komoditasCabaiMerah, $objekCabaiMerah);
            array_push($komoditasCabaiPutih, $objekCabaiPutih);
            array_push($komoditasCabaiBubuk, $objekCabaiBubuk);
            array_push($komoditasCabaiPaprika, $objekCabaiPaprika);
        }

        return view('toko.show-statistik', compact(
            'komoditasCabaiRawit',
            'komoditasCabaiKeriting',
            'komoditasCabaiMerah',
            'komoditasCabaiPutih',
            'komoditasCabaiBubuk',
            'komoditasCabaiPaprika',
            'petani',
            'waktu',
            'totalDay'
        ));
    }

    public function showStatistikDesa(Request $request)
    {
        $waktu = explode("-", $request->bulan);
        $totalDay = cal_days_in_month(CAL_GREGORIAN, $waktu[1], $waktu[0]);

        $desa = Desa::findOrFail($request->desa);

        $komoditasCabaiRawit = [];
        $komoditasCabaiKeriting = [];
        $komoditasCabaiMerah = [];
        $komoditasCabaiPutih = [];
        $komoditasCabaiBubuk = [];
        $komoditasCabaiPaprika = [];

        for ($i = 1; $i <= $totalDay; $i++) {
            $cabaiRawit = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 1)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');
            $cabaiKeriting = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 2)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');
            $cabaiMerah = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 3)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');
            $cabaiPutih = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 4)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');
            $cabaiBubuk = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 5)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');
            $cabaiPaprika = Komoditas::select('harga_jual', 'kuantitas')->where('desa_id', $request->desa)->where('kategori_komoditas_detail_id', 6)->where('status_pengajuan', 3)->where('status_uji_kualitas', 2)->whereDate('created_at', date('Y-m-' . $i))->sum('kuantitas');

            $objekCabaiRawit = new stdClass();
            $objekCabaiKeriting = new stdClass();
            $objekCabaiMerah = new stdClass();
            $objekCabaiPutih = new stdClass();
            $objekCabaiBubuk = new stdClass();
            $objekCabaiPaprika = new stdClass();

            if ($cabaiRawit) {
                $objekCabaiRawit->kuantitas = $cabaiRawit;
            } else {
                $objekCabaiRawit->harga_jual = '-';
                $objekCabaiRawit->kuantitas = '-';
            }

            if ($cabaiKeriting) {
                $objekCabaiKeriting->kuantitas = $cabaiKeriting;
            } else {
                $objekCabaiKeriting->harga_jual = '-';
                $objekCabaiKeriting->kuantitas = '-';
            }

            if ($cabaiMerah) {
                $objekCabaiMerah->kuantitas = $cabaiMerah;
            } else {
                $objekCabaiMerah->harga_jual = '-';
                $objekCabaiMerah->kuantitas = '-';
            }

            if ($cabaiPutih) {
                $objekCabaiPutih->kuantitas = $cabaiPutih;
            } else {
                $objekCabaiPutih->harga_jual = '-';
                $objekCabaiPutih->kuantitas = '-';
            }

            if ($cabaiBubuk) {
                $objekCabaiBubuk->kuantitas = $cabaiBubuk;
            } else {
                $objekCabaiBubuk->harga_jual = '-';
                $objekCabaiBubuk->kuantitas = '-';
            }

            if ($cabaiPaprika) {
                $objekCabaiPaprika->kuantitas = $cabaiPaprika;
            } else {
                $objekCabaiPaprika->harga_jual = '-';
                $objekCabaiPaprika->kuantitas = '-';
            }

            array_push($komoditasCabaiRawit, $objekCabaiRawit);
            array_push($komoditasCabaiKeriting, $objekCabaiKeriting);
            array_push($komoditasCabaiMerah, $objekCabaiMerah);
            array_push($komoditasCabaiPutih, $objekCabaiPutih);
            array_push($komoditasCabaiBubuk, $objekCabaiBubuk);
            array_push($komoditasCabaiPaprika, $objekCabaiPaprika);
        }


        return view('toko.show-statistik', compact(
            'komoditasCabaiRawit',
            'komoditasCabaiKeriting',
            'komoditasCabaiMerah',
            'komoditasCabaiPutih',
            'komoditasCabaiBubuk',
            'komoditasCabaiPaprika',
            'desa',
            'waktu',
            'totalDay'
        ));
    }
}
