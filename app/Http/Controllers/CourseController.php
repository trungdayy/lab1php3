<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Support\Facades\DB;

class CourseController extends Controller
{
    // Hiển thị chi tiết của một khóa học cụ thể
    public function show($id)
    {
        $course = Course::with('lesions')->findOrFail($id);

        return view('courses.show', compact('course'));
    }

    public function index()
{
    $categories = Course::select('category')->distinct()->get();

    $coursesByCategory = [];
    foreach ($categories as $category) {
        $coursesByCategory[$category->category] = Course::where('category', $category->category)
            ->with('lesions')
            ->paginate(10); // Sửa lỗi paginate()
    }

    return view('home', compact('coursesByCategory'));
}

}
