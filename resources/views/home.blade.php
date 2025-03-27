@extends('layouts.app')

@section('title', 'Trang Chủ')

@section('content')
    <!-- Nút chuyển đổi giữa Courses và Lesions -->
    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('home') }}" class="btn btn-danger">Danh sách chính</a>

      <a href="{{ route('admin.courses.index') }}" class="btn btn-secondary">Quản lý Khóa học</a>
      <a href="{{ route('admin.lesions.index') }}" class="btn btn-primary">Quản lý bài học</a>
  </div>
<div class="container">
    <h2 class="text-center my-4">Danh Sách Khóa Học</h2>
    
    <div class="row row-cols-1 row-cols-md-3 g-4 ">
    
        @foreach($courses as $course)
            <div class="col d-flex align-items-stretch">
                <div class="card w-100 shadow-sm h-100">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">{{ $course->title }}</h5>
                        <p class="card-text text-muted">{{ number_format($course->price) }} VNĐ</p>
                        <div class="mt-auto">
                        <a href="{{ route('courses.show', $course->id) }}" class="btn btn-primary w-100">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
