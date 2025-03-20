<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesion extends Model
{
    use HasFactory;

    protected $fillable = ['course_id', 'title', 'content', 'image'];

    // Quan hệ n-1 với khóa học
    public function course()
    {
        return $this->belongsTo(Course::class);
    }
}
