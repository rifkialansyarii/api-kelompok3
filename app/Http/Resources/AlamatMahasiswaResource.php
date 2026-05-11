<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AlamatMahasiswaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_alamat' => $this->id_alamat,
            'id_mahasiswa' => $this->id_mahasiswa,
            'alamat_ktp' => $this->alamat_ktp,
            'rt_ktp' => $this->rt_ktp,
            'rw_ktp' => $this->rw_ktp,
            'dusun_ktp' => $this->dusun_ktp,
            'kelurahan_ktp' => $this->kelurahan_ktp,
            'id_provinsi_ktp' => $this->id_provinsi_ktp,
            'id_kota_ktp' => $this->id_kota_ktp,
            'id_kecamatan_ktp' => $this->id_kecamatan_ktp,
            'kode_pos_ktp' => $this->kode_pos_ktp,
            'is_domisili_sesuai_ktp' => (bool) $this->is_domisili_sesuai_ktp,
            'alamat_domisili' => $this->alamat_domisili,
            'rt_domisili' => $this->rt_domisili,
            'rw_domisili' => $this->rw_domisili,
            'dusun_domisili' => $this->dusun_domisili,
            'kelurahan_domisili' => $this->kelurahan_domisili,
            'id_provinsi_domisili' => $this->id_provinsi_domisili,
            'id_kota_domisili' => $this->id_kota_domisili,
            'id_kecamatan_domisili' => $this->id_kecamatan_domisili,
            'kode_pos_domisili' => $this->kode_pos_domisili,
            'status_tinggal' => $this->status_tinggal,
        ];
    }
}