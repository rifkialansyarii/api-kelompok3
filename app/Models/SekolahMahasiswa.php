<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SekolahMahasiswa extends Model
{
    public $timestamps = false;
    protected $table = 'sekolah_mahasiswa';
    protected $primaryKey = 'id_sekolah';

    protected $fillable = [
        'id_mahasiswa', 'pendidikan_asal', 'id_provinsi_sekolah',
        'id_kota_sekolah', 'nama_sekolah', 'alamat_sekolah',
        'telepon_sekolah', 'nomor_ijazah', 'nisn', 'file_ijazah_terakhir'
    ];
}