@extends('layouts.app')

@section('content')
<h1>Chỉnh sửa khóa học</h1>

<form action="{{ route('admin.courses.update', $course->id) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="mb-3">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" class="form-control" 
               value="{{ old('title', $course->title) }}" required>
        @if ($errors->has('title'))
            <p class="text-danger">{{ $errors->first('title') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="description">Description</label>
        <textarea name="description" id="description" class="form-control" required>{{ old('description', $course->description) }}</textarea>
        @if ($errors->has('description'))
            <p class="text-danger">{{ $errors->first('description') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="introduction">Introduction</label>
        <input type="text" name="introduction" id="introduction" class="form-control" 
               value="{{ old('introduction', $course->introduction) }}" required>
        @if ($errors->has('introduction'))
            <p class="text-danger">{{ $errors->first('introduction') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="price">Price</label>
        <input type="number" name="price" id="price" class="form-control" 
               value="{{ old('price', $course->price) }}" required>
        @if ($errors->has('price'))
            <p class="text-danger">{{ $errors->first('price') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </div>
</form>
@endsection
