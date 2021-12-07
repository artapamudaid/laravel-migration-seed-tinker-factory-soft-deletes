<?php

namespace Database\Factories;

use App\Models\Products;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductsFactory extends Factory
{

    protected $model = Products::class;

    public function definition()
    {
        return [
            'product_category_id' => $this->faker->numberBetween(1, 4),
            'name' => $this->faker->word(),
            'description' => $this->faker->paragraph(),
            'price' => $this->faker->randomNumber(),
            'image' => $this->faker->imageUrl(640, 480, 'animals', true)
        ];
    }
}
