<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\MahasiswaController;
use App\Http\Controllers\Api\BiodataController;
use App\Http\Controllers\Api\AlamatController;
use App\Http\Controllers\Api\OrangTuaWaliController;
use App\Http\Controllers\Api\SekolahController;
use App\Http\Controllers\Api\KrsController;

Route::get('/debug-token', function (Illuminate\Http\Request $request) {
    $authHeader = $request->header('Authorization');
    $token = substr($authHeader, 7);
    $parts = explode('.', $token);
    
    $secret = env('JWT_SECRET');
    $headerPayload = $parts[0] . '.' . $parts[1];
    
    $expectedSig = rtrim(
        strtr(
            base64_encode(
                hash_hmac('sha256', $headerPayload, $secret, true)
            ),
            '+/', '-_'
        ),
        '='
    );

    return response()->json([
        'secret_length' => strlen($secret),
        'secret_preview' => substr($secret, 0, 10) . '...',
        'expected_sig' => $expectedSig,
        'actual_sig' => $parts[2],
        'match' => hash_equals($expectedSig, $parts[2]),
    ]);
});

Route::middleware('jwt')->group(function () {

    // =====================
    // MAHASISWA
    // =====================
    Route::get('/mahasiswa', [MahasiswaController::class, 'index'])
        ->middleware('jwt:admin-mahasiswa');

    Route::post('/mahasiswa', [MahasiswaController::class, 'store'])
        ->middleware('jwt:admin-mahasiswa');

    Route::get('/mahasiswa/{id}', [MahasiswaController::class, 'show']);

    Route::put('/mahasiswa/{id}', [MahasiswaController::class, 'update']);

    Route::delete('/mahasiswa/{id}', [MahasiswaController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // BIODATA
    // =====================
    Route::get('/mahasiswa/{id}/biodata', [BiodataController::class, 'show']);

    Route::post('/mahasiswa/{id}/biodata', [BiodataController::class, 'store'])
        ->middleware('jwt:admin-mahasiswa');

    Route::put('/mahasiswa/{id}/biodata', [BiodataController::class, 'update']);

    Route::delete('/mahasiswa/{id}/biodata', [BiodataController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // ALAMAT
    // =====================
    Route::get('/mahasiswa/{id}/alamat', [AlamatController::class, 'show']);

    Route::post('/mahasiswa/{id}/alamat', [AlamatController::class, 'store'])
        ->middleware('jwt:admin-mahasiswa');

    Route::put('/mahasiswa/{id}/alamat', [AlamatController::class, 'update']);

    Route::delete('/mahasiswa/{id}/alamat', [AlamatController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // ORANG TUA & WALI
    // =====================
    Route::get('/mahasiswa/{id}/ortu', [OrangTuaWaliController::class, 'index']);

    Route::post('/mahasiswa/{id}/ortu', [OrangTuaWaliController::class, 'store'])
        ->middleware('jwt:admin-mahasiswa');

    Route::put('/mahasiswa/{id}/ortu/{id_ortu}', [OrangTuaWaliController::class, 'update']);

    Route::delete('/mahasiswa/{id}/ortu/{id_ortu}', [OrangTuaWaliController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // SEKOLAH
    // =====================
    Route::get('/mahasiswa/{id}/sekolah', [SekolahController::class, 'show']);

    Route::post('/mahasiswa/{id}/sekolah', [SekolahController::class, 'store'])
        ->middleware('jwt:admin-mahasiswa');

    Route::put('/mahasiswa/{id}/sekolah', [SekolahController::class, 'update']);

    Route::delete('/mahasiswa/{id}/sekolah', [SekolahController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // KRS
    // =====================
    Route::get('/mahasiswa/{id}/krs', [KrsController::class, 'index']);

    Route::post('/mahasiswa/{id}/krs', [KrsController::class, 'store']);

    Route::get('/mahasiswa/{id}/krs/{id_krs}', [KrsController::class, 'show']);

    Route::put('/mahasiswa/{id}/krs/{id_krs}', [KrsController::class, 'update']);

    Route::delete('/mahasiswa/{id}/krs/{id_krs}', [KrsController::class, 'destroy'])
        ->middleware('jwt:admin-mahasiswa');

    // =====================
    // KRS DETAIL
    // =====================
    Route::get('/mahasiswa/{id}/krs/{id_krs}/detail', [KrsController::class, 'detailIndex']);

    Route::post('/mahasiswa/{id}/krs/{id_krs}/detail', [KrsController::class, 'detailStore']);

    Route::delete('/mahasiswa/{id}/krs/{id_krs}/detail/{id_detail}', [KrsController::class, 'detailDestroy']);
});