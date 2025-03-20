<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Lesion;

class LesionFactory extends Factory
{
    protected $model = Lesion::class;

    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'content' => $this->faker->paragraph(),
            'course_id' => \App\Models\Course::factory(), // Liên kết với Course
        ];
    }
}

