@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <!-- Tiêu đề bài học -->
        <h1 class="text-center mb-4">{{ $lesion->title }}</h1>

        <!-- Nội dung bài học -->
        <div class="content mb-5">
            <p class="lead">{{ $lesion->content }}</p>
        </div>

        <!-- Hình ảnh bài học -->
        <div class="text-center">
            <img src="{{ asset('storage/'.$lesion->image) }}" alt="{{ $lesion->title }}" class="img-fluid rounded shadow-lg">
        </div>
        
        <!-- Thêm một liên kết quay lại -->
        <div class="text-center mt-4">
            <a href="{{ route('courses.show', $lesion->course_id) }}" class="btn btn-danger">Quay lại khóa học</a>
        </div>
    </div>
@endsection
