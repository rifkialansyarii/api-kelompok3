<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BiodataMahasiswaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_biodata' => $this->id_biodata,
            'id_mahasiswa' => $this->id_mahasiswa,
            'jenis_kelamin' => $this->jenis_kelamin,
            'tempat_lahir' => $this->tempat_lahir,
            'tanggal_lahir' => $this->tanggal_lahir,
            'agama' => $this->agama,
            'suku' => $this->suku,
            'berat_badan' => $this->berat_badan,
            'tinggi_badan' => $this->tinggi_badan,
            'golongan_darah' => $this->golongan_darah,
            'transportasi' => $this->transportasi,
            'no_telepon' => $this->no_telepon,
            'no_hp' => $this->no_hp,
            'kepemilikan' => $this->kepemilikan,
            'email_kampus' => $this->email_kampus,
            'email_pribadi' => $this->email_pribadi,
            'kewarganegaraan' => $this->kewarganegaraan,
            'nik' => $this->nik,
            'paspor' => $this->paspor,
            'no_kk' => $this->no_kk,
            'npwp' => $this->npwp,
            'no_kps' => $this->no_kps,
            'status_nikah' => $this->status_nikah,
            'ukuran_jas_almamater' => $this->ukuran_jas_almamater,
            'file_akta_kelahiran' => $this->file_akta_kelahiran,
        ];
    }
}