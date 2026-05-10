<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrangTuaWali extends Model
{
    public $timestamps = false;
    protected $table = 'orang_tua_wali';
    protected $primaryKey = 'id_ortu_wali';

    protected $fillable = [
        'id_mahasiswa', 'jenis_peran', 'nama_lengkap', 'nik',
        'tanggal_lahir', 'status_hidup', 'status_kekerabatan',
        'pendidikan_terakhir', 'pekerjaan', 'penghasilan',
        'alamat', 'no_telepon', 'email'
    ];
}