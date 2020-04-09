<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductsModel extends Model
{
    protected $table = 'products';
    public $timestamps = true;
    protected $fillable = [
		'user_id',
    	'product_title',
    	'product_description',
    	'category_id',
    	'product_image',
    	'created_at',
    	'updated_at',
    ];
}
