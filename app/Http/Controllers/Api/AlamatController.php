<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AlamatMahasiswa;
use Illuminate\Http\Request;

class AlamatController extends Controller
{
    public function show(Request $request, $id)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $alamat = AlamatMahasiswa::where('id_mahasiswa', $id)->first();

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

    public function store(Request $request, $id)
    {
        $data = $request->all();
        $data['id_mahasiswa'] = $id;

        $alamat = AlamatMahasiswa::create($data);

        return response()->json([
            'success' => true,
            'data' => $alamat
        ], 201);
    }

    public function update(Request $request, $id)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $alamat = AlamatMahasiswa::where('id_mahasiswa', $id)->first();

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

    public function destroy(Request $request, $id)
    {
        $alamat = AlamatMahasiswa::where('id_mahasiswa', $id)->first();

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