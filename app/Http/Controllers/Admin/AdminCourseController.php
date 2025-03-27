<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Course;

class AdminCourseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $courses = DB::table('courses')
        ->select(['courses.*'])
        ->orderBy('id', 'desc')
        ->get();
        return view('admin.courses.index'   , compact('courses'));
    }
    public function create() {
        return view('admin.courses.create');
    }

    public function store(Request $request)
{
    // Tạo mảng chứa lỗi
    $error = [];

    if (empty($request->title)) {
        $error['title'] = 'Tiêu đề không được để trống';
    }
    if (empty($request->price)) {
        $error['price'] = 'Giá không được để trống';
    }

    // Nếu có lỗi, trả về view create với dữ liệu cũ và lỗi
    if (!empty($error)) {
        return redirect()->route('admin.courses.create')
                         ->withInput()
                         ->withErrors($error);
    }

    // Lưu vào database
    Course::create($request->all());

    // Chuyển hướng về trang danh sách với thông báo
    return redirect()->route('admin.courses.index')->with('success', 'Khóa học đã được thêm thành công.');
}

    public function edit($id) {
        $course = Course::findOrFail($id);
        return view('admin.courses.edit', compact('course'));
    }

    public function update(Request $request, $id) {
        $course = Course::findOrFail($id);
    
        // Validate dữ liệu
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'introduction' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
        ]);
    
        // Cập nhật vào database
        $course->update($validated);
    
        // Chuyển hướng về trang danh sách
        return redirect()->route('admin.courses.index')->with('success', 'Cập nhật thành công.');
    }
    

    public function destroy($id) {
        $course = Course::findOrFail($id); // Kiểm tra khóa học tồn tại
        $course->delete(); // Xóa khỏi database
    
        return redirect()->route('admin.courses.index')->with('success', 'Khóa học đã được xóa.');
    }
    
}
