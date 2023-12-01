<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productOrder extends Model
{

    use HasFactory;
    protected $guarded = [];
    public function productRelOrder(){
        return $this->belongsTo(product::class,'product_id','id');
    }
}
