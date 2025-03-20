<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Course; // Import model Course

class CourseFactory extends Factory
{
    protected $model = Course::class;

    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(),
            'introduction' => $this->faker->text(200),
            'price' => $this->faker->randomFloat(2, 100, 1000), // Giá từ 100 đến 1000
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
