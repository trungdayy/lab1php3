@extends('layouts.app')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center mb-4">{{ $lesion->title }}</h1>

        <div class="content mb-5">
            <p class="lead">{{ $lesion->content }}</p>
        </div>

        <div class="text-center">
            <img src="{{ asset('storage/'.$lesion->image) }}" alt="{{ $lesion->title }}" class="img-fluid rounded shadow-lg">
        </div>
        
        <div class="text-center mt-4">
            <a href="{{ route('courses.show', $lesion->course_id) }}" class="btn btn-danger">Quay lại khóa học</a>
        </div>
    </div>
@endsection
