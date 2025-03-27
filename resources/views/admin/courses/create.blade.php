@extends('layouts.app')

@section('content')
<h1>Thêm mới</h1>

<form action="{{ route('admin.courses.store') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" class="form-control" value="{{ old('title') }}" required>
        @if ($errors->has('title'))
            <p class="text-danger">{{ $errors->first('title') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="description">Description</label>
        <textarea name="description" id="description" class="form-control" required>{{ old('description') }}</textarea>
        @if ($errors->has('description'))
            <p class="text-danger">{{ $errors->first('description') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="introduction">Introduction</label>
        <input type="text" name="introduction" id="introduction" class="form-control" value="{{ old('introduction') }}" required>
        @if ($errors->has('introduction'))
            <p class="text-danger">{{ $errors->first('introduction') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <label for="price">Price</label>
        <input type="number" name="price" id="price" class="form-control" value="{{ old('price') }}" required>
        @if ($errors->has('price'))
            <p class="text-danger">{{ $errors->first('price') }}</p>
        @endif
    </div>

    <div class="mb-3">
        <button type="submit" class="btn btn-primary">Thêm mới</button>
    </div>
</form>
@endsection
