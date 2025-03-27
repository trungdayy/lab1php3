@extends('layouts.app')

@section('content')
    <!-- Nút chuyển đổi giữa Courses và Lesions -->
    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('home') }}" class="btn btn-danger">Danh sách chính</a>

      <a href="{{ route('admin.courses.index') }}" class="btn btn-secondary">Quản lý Khóa học</a>
      <a href="{{ route('admin.lesions.index') }}" class="btn btn-primary">Quản lý bài học</a>
  </div>
    <div class="container mt-5">
        <label for=""">Title:</label>
        <h1 class="mb-4 form-control">{{ $lesion->title }}</h1>

        <div class="content mb-5">
            <label for="image">Conten:</label>
            <p class="form-control">{{ $lesion->content }}</p>
        </div>

        <div class="">
            <label for="image">Hinh anh:</label>
             <img src="{{ asset('storage/'.$lesion->image) }}" alt="{{ $lesion->title }}" class="img-fluid rounded shadow-lg" width="300">
        </div>
        
        <div class="text-center mt-4">
            <a href="{{ route('courses.show', $lesion->course_id) }}" class="btn btn-danger">Quay lại khóa học</a>
        </div>
    </div>
@endsection
