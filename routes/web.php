<?php

use Illuminate\Support\Facades\Route;
use App\Models\Course;
use App\Http\Controllers\CourseController;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/home', function () {
    $courses = Course::orderBy('created_at', 'desc')->limit(6)->get();
    return view('home', compact('courses'));
})->name('home');

Route::get('/courses/{id}', [CourseController::class, 'show'])->name('courses.show');


use App\Http\Controllers\LesionController;

Route::get('/lesions/{id}', [LesionController::class, 'show'])->name('lesions.show');
Route::get('/', [CourseController::class, 'index'])->name('home');
