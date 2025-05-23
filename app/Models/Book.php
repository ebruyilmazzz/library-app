<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'author',
        'category',
        'quantity',
    ];

    public function loans()
    {
        return $this->hasMany(Loan::class);
    }

    public function requests()
    {
        return $this->hasMany(Request::class);
    }
    
}
