<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrangTuaWaliResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_ortu_wali' => $this->id_ortu_wali,
            'id_mahasiswa' => $this->id_mahasiswa,
            'jenis_peran' => $this->jenis_peran,
            'nama_lengkap' => $this->nama_lengkap,
            'nik' => $this->nik,
            'tanggal_lahir' => $this->tanggal_lahir,
            'status_hidup' => $this->status_hidup,
            'status_kekerabatan' => $this->status_kekerabatan,
            'pendidikan_terakhir' => $this->pendidikan_terakhir,
            'pekerjaan' => $this->pekerjaan,
            'penghasilan' => $this->penghasilan,
            'alamat' => $this->alamat,
            'no_telepon' => $this->no_telepon,
            'email' => $this->email,
            'is_dapat_login' => (bool) $this->is_dapat_login,
        ];
    }
}