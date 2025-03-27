@extends('layouts.app')
@section('content')
<div class="card shadow-lg p-4">
    <!-- Nút chuyển đổi giữa Courses và Lesions -->
    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('home') }}" class="btn btn-danger">Danh sách chính</a>

      <a href="{{ route('admin.courses.index') }}" class="btn btn-secondary">Quản lý Khóa học</a>
      <a href="{{ route('admin.lesions.index') }}" class="btn btn-primary">Quản lý bài học</a>
  </div>
    <h3 class="mb-3 text-center">Danh sách khóa hoc</h3>
    <table class="table table-hover table-bordered text-center align-middle">
        <a href="{{ route('admin.courses.create') }}" class="btn btn-primary">Them moi</a>

        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Description</th>
                <th>Introduction</th>
                <th>Price ($)</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($courses as $index => $course)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $course->title }}</td>
                    <td>{{ \Illuminate\Support\Str::limit($course->description, 50) }}</td>
                    <td>{{ \Illuminate\Support\Str::limit($course->introduction, 50) }}</td>
                    <td>${{ number_format($course->price, 2) }}</td>
                    <td>{{ $course->created_at instanceof \Carbon\Carbon ? $course->created_at->format('d-m-Y') : $course->created_at }}</td>
                    <td>{{ $course->updated_at instanceof \Carbon\Carbon ? $course->updated_at->format('d-m-Y') : $course->updated_at }}</td>
                    <td>
                        <a href="{{ route('admin.courses.edit', $course->id) }}" class="btn btn-sm btn-warning">Edit</a>
                        <form action="{{ route('admin.courses.destroy', $course->id) }}" method="POST" class="d-inline-block" onsubmit="return confirm('Bạn có muốn xóa không')">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
