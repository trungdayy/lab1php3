<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'description', 'introduction', 'price'];

    public function lesions()
    {
        return $this->hasMany(Lesion::class, 'course_id');
    }
}
