<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Krs;
use App\Models\KrsDetail;
use Illuminate\Http\Request;

class KrsController extends Controller
{
    public function index(Request $request, $id)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $krs = Krs::where('id_mahasiswa', $id)
            ->with('detail')
            ->get();

        return response()->json([
            'success' => true,
            'data' => $krs
        ]);
    }

    public function store(Request $request, $id)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $data = $request->all();
        $data['id_mahasiswa'] = $id;

        $krs = Krs::create($data);

        return response()->json([
            'success' => true,
            'data' => $krs
        ], 201);
    }

    public function show(Request $request, $id, $id_krs)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $krs = Krs::where('id_mahasiswa', $id)
            ->where('id_krs', $id_krs)
            ->with('detail')
            ->first();

        if (!$krs) {
            return response()->json([
                'success' => false,
                'message' => 'Data KRS tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'success' => true,
            'data' => $krs
        ]);
    }

    public function update(Request $request, $id, $id_krs)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $krs = Krs::where('id_mahasiswa', $id)
            ->where('id_krs', $id_krs)
            ->first();

        if (!$krs) {
            return response()->json([
                'success' => false,
                'message' => 'Data KRS tidak ditemukan'
            ], 404);
        }

        $krs->update($request->all());

        return response()->json([
            'success' => true,
            'data' => $krs
        ]);
    }

    public function destroy(Request $request, $id, $id_krs)
    {
        $krs = Krs::where('id_mahasiswa', $id)
            ->where('id_krs', $id_krs)
            ->first();

        if (!$krs) {
            return response()->json([
                'success' => false,
                'message' => 'Data KRS tidak ditemukan'
            ], 404);
        }

        $krs->delete();

        return response()->json([
            'success' => true,
            'message' => 'KRS berhasil dihapus'
        ]);
    }

    public function detailIndex(Request $request, $id, $id_krs)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $detail = KrsDetail::where('id_krs', $id_krs)->get();

        return response()->json([
            'success' => true,
            'data' => $detail
        ]);
    }

    public function detailStore(Request $request, $id, $id_krs)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $data = $request->all();
        $data['id_krs'] = $id_krs;

        $detail = KrsDetail::create($data);

        return response()->json([
            'success' => true,
            'data' => $detail
        ], 201);
    }

    public function detailDestroy(Request $request, $id, $id_krs, $id_detail)
    {
        if ($request->jwt_role === 'mahasiswa' && $request->jwt_detail_id != $id) {
            return response()->json([
                'success' => false,
                'message' => 'Akses ditolak'
            ], 403);
        }

        $detail = KrsDetail::where('id_krs', $id_krs)
            ->where('id_krs_detail', $id_detail)
            ->first();

        if (!$detail) {
            return response()->json([
                'success' => false,
                'message' => 'Detail KRS tidak ditemukan'
            ], 404);
        }

        $detail->delete();

        return response()->json([
            'success' => true,
            'message' => 'MK berhasil dihapus dari KRS'
        ]);
    }
}