<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Lesion;
use App\Models\Course;

class AdminLesionController extends Controller
{
    public function index()
    {
        $lesions = Lesion::with('course')->orderBy('id', 'desc')->get();
        return view('admin.lesions.index', compact('lesions'));
    }

    public function create()
    {
        $courses = Course::all();
        return view('admin.lesions.create', compact('courses'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'course_id' => 'required|exists:courses,id',
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $data = $request->except('image');
        if ($request->hasFile('image')) {
            $data['image'] = $request->file('image')->store('lesion_images', 'public');
        }

        Lesion::create($data);
        return redirect()->route('admin.lesions.index')->with('success', 'Bài học đã được thêm.');
    }

    public function edit($id)
    {
        $lesion = Lesion::findOrFail($id);
        $courses = Course::all();
        return view('admin.lesions.edit', compact('lesion', 'courses'));
    }

    public function update(Request $request, $id)
    {
        $lesion = Lesion::findOrFail($id);

        $request->validate([
            'course_id' => 'required|exists:courses,id',
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        $data = $request->except('image');
        if ($request->hasFile('image')) {
            $data['image'] = $request->file('image')->store('lesion_images', 'public');
        }

        $lesion->update($data);
        return redirect()->route('admin.lesions.index')->with('success', 'Bài học đã được cập nhật.');
    }

    public function destroy($id)
    {
        Lesion::destroy($id);
        return redirect()->route('admin.lesions.index')->with('success', 'Bài học đã được xóa.');
    }
}
