<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SekolahMahasiswaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_sekolah' => $this->id_sekolah,
            'id_mahasiswa' => $this->id_mahasiswa,
            'pendidikan_asal' => $this->pendidikan_asal,
            'id_provinsi_sekolah' => $this->id_provinsi_sekolah,
            'id_kota_sekolah' => $this->id_kota_sekolah,
            'nama_sekolah' => $this->nama_sekolah,
            'alamat_sekolah' => $this->alamat_sekolah,
            'telepon_sekolah' => $this->telepon_sekolah,
            'nomor_ijazah' => $this->nomor_ijazah,
            'nisn' => $this->nisn,
            'file_ijazah_terakhir' => $this->file_ijazah_terakhir,
        ];
    }
}