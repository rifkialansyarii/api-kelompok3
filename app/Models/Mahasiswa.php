<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    use HasUuids;
    public $timestamps = false;
    protected $table = 'mahasiswa';
    protected $primaryKey = 'id_mahasiswa';

    protected $fillable = [
        'nim', 'nama_mahasiswa', 'periode_masuk', 'tahun_kurikulum',
        'status_mahasiswa', 'kelas_kelompok', 'jurusan', 'prodi',
        'jalur_pendaftaran', 'gelombang', 'tanggal_awal_masuk',
        'tanggal_daftar_ulang', 'is_kebutuhan_khusus'
    ];

    public function biodata()
    {
        return $this->hasOne(BiodataMahasiswa::class, 'id_mahasiswa', 'id_mahasiswa');
    }
    public function alamat()
    {
        return $this->hasOne(AlamatMahasiswa::class, 'id_mahasiswa', 'id_mahasiswa');
    }
    public function orangTuaWali()
    {
        return $this->hasMany(OrangTuaWali::class, 'id_mahasiswa', 'id_mahasiswa');
    }
    public function sekolah()
    {
        return $this->hasOne(SekolahMahasiswa::class, 'id_mahasiswa', 'id_mahasiswa');
    }
    public function krs()
    {
        return $this->hasMany(Krs::class, 'id_mahasiswa', 'id_mahasiswa');
    }
}