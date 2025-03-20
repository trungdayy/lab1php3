<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'description', 'introduction', 'price'];

    // Quan hệ 1-n với bảng Lesion
    public function lesions()
    {
        return $this->hasMany(Lesion::class, 'course_id');
    }
}
