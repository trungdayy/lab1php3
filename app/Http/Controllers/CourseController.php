<?php

namespace App\Http\Controllers;

use App\Models\Course;

class CourseController extends Controller
{
    // Hiển thị chi tiết của một khóa học cụ thể
    public function show($id)
    {
        // Lấy khóa học và các bài học (lesions) liên quan
        $course = Course::with('lesions')->findOrFail($id);

        // Truyền dữ liệu vào view
        return view('courses.show', compact('course'));
    }

    // Hiển thị các khóa học theo danh mục ngay trong trang chủ
    public function index()
    {
        // Lấy tất cả các danh mục khóa học (category) có trong database
        $categories = Course::select('category')->distinct()->get();

        // Lấy các khóa học theo từng danh mục
        $coursesByCategory = [];
        foreach ($categories as $category) {
            $coursesByCategory[$category->category] = Course::where('category', $category->category)->with('lesions')->get();
        }

        // Trả về view trang chủ với các khóa học theo danh mục
        return view('home', compact('coursesByCategory'));
    }
}
