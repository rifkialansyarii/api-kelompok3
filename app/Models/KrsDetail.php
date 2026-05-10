<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KrsDetail extends Model
{
    public $timestamps = false;
    protected $table = 'krs_detail';
    protected $primaryKey = 'id_krs_detail';

    protected $fillable = [
        'id_krs', 'mk_kode'
    ];

    const CREATED_AT = 'created_at';
    const UPDATED_AT = null;
}