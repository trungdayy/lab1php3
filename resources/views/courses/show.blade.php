@extends('layouts.app')

@section('content')
    <!-- Nút chuyển đổi giữa Courses và Lesions -->
    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('home') }}" class="btn btn-danger">Danh sách chính</a>

      <a href="{{ route('admin.courses.index') }}" class="btn btn-secondary">Quản lý Khóa học</a>
      <a href="{{ route('admin.lesions.index') }}" class="btn btn-primary">Quản lý bài học</a>
  </div>
    <div class="container mt-5">
        <h1 class="text-center mb-4">{{ $course->title }}</h1>
        <p class="lead">{{ $course->description }}</p>

        <h3 class="mt-4">Bài học</h3>
        <div class="list-group">
            @foreach($course->lesions as $lesion)
                <a href="{{ route('lesions.show', $lesion->id) }}" class="btn btn-primary hover-link">
                    <h5 class="mb-1">{{ $lesion->title }}</h5>
                    <p class="mb-1">{{ \Str::limit($lesion->content, 150) }}</p> <!-- Giới hạn nội dung -->
                </a>
                <div class="text-center mt-4">
        </div>
            @endforeach
        </div>
    </div>
    <a href="{{ route('home')}}" class="btn btn-danger">Quay lại trang chủ</a>

@endsection

@section('styles')
    <style>
        .hover-link:hover {
            font-weight: bold; 
            color: #007bff; 
            transition: all 0.3s ease-in-out;
        }
    </style>
@endsection
