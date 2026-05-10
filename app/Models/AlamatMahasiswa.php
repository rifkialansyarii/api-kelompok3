<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AlamatMahasiswa extends Model
{
    public $timestamps = false;
    protected $table = 'alamat_mahasiswa';
    protected $primaryKey = 'id_alamat';

    protected $fillable = [
        'id_mahasiswa', 'alamat_ktp', 'rt_ktp', 'rw_ktp', 'dusun_ktp',
        'kelurahan_ktp', 'id_provinsi_ktp', 'id_kota_ktp', 'id_kecamatan_ktp',
        'kode_pos_ktp', 'is_domisili_sesuai_ktp', 'alamat_domisili',
        'rt_domisili', 'rw_domisili', 'dusun_domisili', 'kelurahan_domisili',
        'id_provinsi_domisili', 'id_kota_domisili', 'id_kecamatan_domisili',
        'kode_pos_domisili', 'status_tinggal'
    ];
}