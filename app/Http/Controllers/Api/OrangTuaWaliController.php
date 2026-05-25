<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Mahasiswa;
use App\Models\OrangTuaWali;
use Illuminate\Http\Request;

class OrangTuaWaliController extends Controller
{
    public function index(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $mahasiswa->id_mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $ortu = OrangTuaWali::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->get();

        return response()->json([
            'success' => true,
            'data' => $ortu
        ]);
    }

    public function store(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $data = $request->all();
        $data['id_mahasiswa'] = $mahasiswa->id_mahasiswa;

        $ortu = OrangTuaWali::create($data);

        return response()->json([
            'success' => true,
            'data' => $ortu
        ], 201);
    }

    public function update(Request $request, $nim, $id_ortu)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $mahasiswa->id_mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $ortu = OrangTuaWali::where('id_mahasiswa', $mahasiswa->id_mahasiswa)
            ->where('id_ortu_wali', $id_ortu)
            ->first();

        if (!$ortu) {
            return response()->json([
                'success' => false,
                'message' => 'Data orang tua/wali tidak ditemukan'
            ], 404);
        }

        $ortu->update($request->all());

        return response()->json([
            'success' => true,
            'data' => $ortu
        ]);
    }

    public function destroy(Request $request, $nim, $id_ortu)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $ortu = OrangTuaWali::where('id_mahasiswa', $mahasiswa->id_mahasiswa)
            ->where('id_ortu_wali', $id_ortu)
            ->first();

        if (!$ortu) {
            return response()->json([
                'success' => false,
                'message' => 'Data orang tua/wali tidak ditemukan'
            ], 404);
        }

        $ortu->delete();

        return response()->json([
            'success' => true,
            'message' => 'Data orang tua/wali berhasil dihapus'
        ]);
    }
}