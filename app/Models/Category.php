<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    public $timestamps = true;
    protected $fillable = [
    	'category',
    	'created_at',
    	'updated_at',
    ];
}
