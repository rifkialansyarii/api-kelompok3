<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class KrsDetailResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id_krs_detail' => $this->id_krs_detail,
            'id_krs' => $this->id_krs,
            'mk_kode' => $this->mk_kode,
            'created_at' => $this->created_at,
        ];
    }
}