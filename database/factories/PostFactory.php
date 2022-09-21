<?php

namespace Database\Factories;

use App\Models\post;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{

    protected $model = post::class;

    public function definition()
    {
        return [
            'titulo' => $this->faker->text(15),
            'contenido'=> $this->faker->text(160),
        ];
    }
}
