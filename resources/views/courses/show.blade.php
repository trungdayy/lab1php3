@extends('layouts.app')

@section('content')
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
            <a href="{{ route('home')}}" class="btn btn-danger">Quay lại trang chủ</a>
        </div>
            @endforeach
        </div>
    </div>
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
