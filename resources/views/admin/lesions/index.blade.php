@extends('layouts.app')

@section('content')
<div class="card shadow-lg p-4">
    <!-- Nút chuyển đổi giữa Courses và Lesions -->
    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('home') }}" class="btn btn-danger">Danh sách chính</a>

      <a href="{{ route('admin.courses.index') }}" class="btn btn-secondary">Quản lý Khóa học</a>
      <a href="{{ route('admin.lesions.index') }}" class="btn btn-primary">Quản lý bài học</a>
  </div>
<h3 class="mb-3 text-center">Danh sách bài học</h3>
<a href="{{ route('admin.lesions.create') }}" class="btn btn-primary mb-3">Thêm mới</a>
<table class="table table-hover table-bordered text-center align-middle">
  <thead class="table-dark">
      <tr>
          <th>#</th>
          <th>Course</th>
          <th>Title</th>
          <th>Content</th>
          <th>Image</th>
          <th>Created At</th>
          <th>Updated At</th>
          <th>Action</th>
      </tr>
  </thead>
  <tbody>
      @foreach($lesions as $index => $lesion)
          <tr>
              <td>{{ $index + 1 }}</td>
              <td>{{ $lesion->course->title }}</td>
              <td>{{ $lesion->title }}</td>
              <td>{{ \Illuminate\Support\Str::limit($lesion->content, 50) }}</td>
              <td>
                  @if($lesion->image)
                      <img src="{{ asset('storage/' . $lesion->image) }}" alt="lesion Image" width="50">
                  @else
                      N/A
                  @endif
              </td>
              <td>{{ $lesion->created_at->format('d-m-Y') }}</td>
              <td>{{ $lesion->updated_at->format('d-m-Y') }}</td>
              <td>
                  <a href="{{ route('admin.lesions.edit', $lesion->id) }}" class="btn btn-sm btn-warning">Edit</a>
                  <form action="{{ route('admin.lesions.destroy', $lesion->id) }}" method="POST" class="d-inline-block" onsubmit="return confirm('Bạn có chắc chắn muốn xóa?')">
                      @csrf
                      @method('DELETE')
                      <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                  </form>
              </td>
          </tr>
      @endforeach
  </tbody>
</table>
</div>
@endsection
