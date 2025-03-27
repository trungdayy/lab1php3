@extends('layouts.app')

@section('content')
<h1>Chỉnh sửa bài học</h1>

<form action="{{ route('admin.lesions.update', $lesion->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="course_id">Khóa học</label>
        <select name="course_id" id="course_id" class="form-control" required>
            @foreach($courses as $course)
                <option value="{{ $course->id }}" {{ $lesion->course_id == $course->id ? 'selected' : '' }}>
                    {{ $course->title }}
                </option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label for="title">Tiêu đề</label>
        <input type="text" name="title" id="title" class="form-control" value="{{ $lesion->title }}" required>
    </div>
    <div class="mb-3">
        <label for="content">Nội dung</label>
        <textarea name="content" id="content" class="form-control" required>{{ $lesion->content }}</textarea>
    </div>
    <div class="mb-3">
        <label for="image">Hình ảnh</label>
        <input type="file" name="image" id="image" class="form-control">
        @if($lesion->image)
            <img src="{{ asset('storage/' . $lesion->image) }}" width="100" class="mt-2">
        @endif
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-success">Cập nhật</button>
    </div>
</form>
@endsection
