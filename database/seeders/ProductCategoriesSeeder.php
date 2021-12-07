<?php

namespace Database\Seeders;

use App\Models\ProductCategories;
use Illuminate\Database\Seeder;

class ProductCategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product_categories = ['Foods', 'Meats', 'Vegetables', 'Fruits'];

        foreach ($product_categories as $product_category) {
            ProductCategories::create([
                'name' => $product_category
            ]);
        }
    }
}
