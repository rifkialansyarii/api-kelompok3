<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MahasiswaResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_mahasiswa' => $this->id_mahasiswa,
            'nim' => $this->nim,
            'nama_mahasiswa' => $this->nama_mahasiswa,
            'periode_masuk' => $this->periode_masuk,
            'kurikulum_id' => $this->kurikulum_id,
            'status_mahasiswa' => $this->status_mahasiswa,
            'kelas_kelompok' => $this->kelas_kelompok,
            'jurusan_id' => $this->jurusan_id,
            'prodi_id' => $this->prodi_id,
            'jalur_pendaftaran' => $this->jalur_pendaftaran,
            'gelombang' => $this->gelombang,
            'tanggal_awal_masuk' => $this->tanggal_awal_masuk,
            'tanggal_daftar_ulang' => $this->tanggal_daftar_ulang,
            'is_kebutuhan_khusus' => (bool) $this->is_kebutuhan_khusus,
            
            // Relasi
            'biodata' => new BiodataMahasiswaResource($this->whenLoaded('biodata')),
            'alamat' => new AlamatMahasiswaResource($this->whenLoaded('alamat')),
            'orang_tua_wali' => OrangTuaWaliResource::collection($this->whenLoaded('orangTuaWali')),
            'sekolah' => new SekolahMahasiswaResource($this->whenLoaded('sekolah')),
            'krs' => KrsResource::collection($this->whenLoaded('krs')),
        ];
    }
}