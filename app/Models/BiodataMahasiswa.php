<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BiodataMahasiswa extends Model
{
    public $timestamps = false;
    protected $table = 'biodata_mahasiswa';
    protected $primaryKey = 'id_biodata';

    protected $fillable = [
        'id_mahasiswa', 'jenis_kelamin', 'tempat_lahir', 'tanggal_lahir',
        'agama', 'suku', 'berat_badan', 'tinggi_badan', 'golongan_darah',
        'transportasi', 'no_telepon', 'no_hp', 'kepemilikan',
        'email_kampus', 'email_pribadi', 'id_negara', 'nik',
        'paspor', 'no_kk', 'npwp', 'no_kps', 'status_nikah',
        'ukuran_jas_almamater', 'file_akta_kelahiran'
    ];
}