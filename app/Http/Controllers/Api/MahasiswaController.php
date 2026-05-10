<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Mahasiswa;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index()
    {
        $mahasiswa = Mahasiswa::with([
            'biodata',
            'alamat',
            'orangTuaWali',
            'sekolah'
        ])->get();

        return response()->json([
            'success' => true,
            'data' => $mahasiswa
        ]);
    }

    public function store(Request $request)
    {
        $mahasiswa = Mahasiswa::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Mahasiswa berhasil ditambahkan',
            'data' => $mahasiswa
        ], 201);
    }

    public function show(Request $request, $id)
    {
        if (
            $request->jwt_role === 'mahasiswa' &&
            $request->jwt_detail_id != $id
        ) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $mahasiswa = Mahasiswa::with([
            'biodata',
            'alamat',
            'orangTuaWali',
            'sekolah'
        ])->find($id);

        if (!$mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $mahasiswa
        ]);
    }

    public function update(Request $request, $id)
    {
        if (
            $request->jwt_role === 'mahasiswa' &&
            $request->jwt_detail_id != $id
        ) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $mahasiswa = Mahasiswa::find($id);

        if (!$mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tidak ditemukan'
            ], 404);
        }

        $mahasiswa->update($request->all());

        return response()->json([
            'success' => true,
            'message' => 'Data mahasiswa berhasil diperbarui',
            'data' => $mahasiswa
        ]);
    }

    public function destroy($id)
    {
        $mahasiswa = Mahasiswa::find($id);

        if (!$mahasiswa) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa tidak ditemukan'
            ], 404);
        }

        $mahasiswa->delete();

        return response()->json([
            'success' => true,
            'message' => 'Data mahasiswa berhasil dihapus'
        ]);
    }
}