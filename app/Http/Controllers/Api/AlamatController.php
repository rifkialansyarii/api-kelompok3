<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Mahasiswa;
use App\Models\AlamatMahasiswa;
use Illuminate\Http\Request;

class AlamatController extends Controller
{
    public function show(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $mahasiswa->id_mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $alamat = AlamatMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$alamat) {
            return response()->json([
                'success' => false,
                'message' => 'Alamat mahasiswa tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $alamat
        ]);
    }

    public function store(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $data = $request->all();
        $data['id_mahasiswa'] = $mahasiswa->id_mahasiswa;

        $alamat = AlamatMahasiswa::create($data);

        return response()->json([
            'success' => true,
            'data' => $alamat
        ], 201);
    }

    public function update(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $mahasiswa->id_mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $alamat = AlamatMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$alamat) {
            return response()->json([
                'success' => false,
                'message' => 'Alamat mahasiswa tidak ditemukan'
            ], 404);
        }

        $alamat->update($request->all());

        return response()->json([
            'success' => true,
            'data' => $alamat
        ]);
    }

    public function destroy(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $alamat = AlamatMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$alamat) {
            return response()->json([
                'success' => false,
                'message' => 'Alamat mahasiswa tidak ditemukan'
            ], 404);
        }

        $alamat->delete();

        return response()->json([
            'success' => true,
            'message' => 'Alamat berhasil dihapus'
        ]);
    }
}