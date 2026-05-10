<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\SekolahMahasiswa;
use Illuminate\Http\Request;

class SekolahController extends Controller
{
    public function show(Request $request, $id)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $sekolah = SekolahMahasiswa::where('id_mahasiswa', $id)->first();

        if (!$sekolah) {
            return response()->json([
                'success' => false,
                'message' => 'Data sekolah mahasiswa tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $sekolah
        ]);
    }

    public function store(Request $request, $id)
    {
        $data = $request->all();
        $data['id_mahasiswa'] = $id;

        $sekolah = SekolahMahasiswa::create($data);

        return response()->json([
            'success' => true,
            'data' => $sekolah
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

        $sekolah = SekolahMahasiswa::where('id_mahasiswa', $id)->first();

        if (!$sekolah) {
            return response()->json([
                'success' => false,
                'message' => 'Data sekolah mahasiswa tidak ditemukan'
            ], 404);
        }

        $sekolah->update($request->all());

        return response()->json([
            'success' => true,
            'data' => $sekolah
        ]);
    }

    public function destroy(Request $request, $id)
    {
        $sekolah = SekolahMahasiswa::where('id_mahasiswa', $id)->first();

        if (!$sekolah) {
            return response()->json([
                'success' => false,
                'message' => 'Data sekolah mahasiswa tidak ditemukan'
            ], 404);
        }

        $sekolah->delete();

        return response()->json([
            'success' => true,
            'message' => 'Data sekolah berhasil dihapus'
        ]);
    }
}