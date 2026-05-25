<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Mahasiswa;
use App\Models\BiodataMahasiswa;
use Illuminate\Http\Request;

class BiodataController extends Controller
{
    public function show($nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $biodata = BiodataMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$biodata) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tersebut tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $biodata
        ]);
    }

    public function store(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $data = $request->all();
        $data['id_mahasiswa'] = $mahasiswa->id_mahasiswa;

        $biodata = BiodataMahasiswa::create($data);

        return response()->json([
            'success' => true,
            'data' => $biodata
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

        $biodata = BiodataMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$biodata) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tersebut tidak ditemukan'
            ], 404);
        }

        $biodata->update($request->all());

        return response()->json([
            'success' => true,
            'data' => $biodata
        ]);
    }

    public function destroy(Request $request, $nim)
    {
        $mahasiswa = Mahasiswa::where('nim', $nim)->firstOrFail();

        $biodata = BiodataMahasiswa::where('id_mahasiswa', $mahasiswa->id_mahasiswa)->first();

        if (!$biodata) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tersebut tidak ditemukan'
            ], 404);
        }

        $biodata->delete();

        return response()->json([
            'success' => true,
            'message' => 'Biodata berhasil dihapus'
        ]);
    }
}