@extends('layouts.app')

@section('content')
<h1>Thêm bài học</h1>

<form action="{{ route('admin.lesions.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label for="course_id">Khóa học</label>
        <select name="course_id" id="course_id" class="form-control" required>
            @foreach($courses as $course)
                <option value="{{ $course->id }}">{{ $course->title }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="title">Tiêu đề</label>
        <input type="text" name="title" id="title" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="content">Nội dung</label>
        <textarea name="content" id="content" class="form-control" required></textarea>
    </div>
    <div class="mb-3">
        <label for="image">Hình ảnh</label>
        <input type="file" name="image" id="image" class="form-control">
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-primary">Thêm mới</button>
    </div>
</form>
@endsection
