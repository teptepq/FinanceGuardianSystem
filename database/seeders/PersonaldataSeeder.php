<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PersonaldataSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Sample data for _personaldata table
        for ($i = 0; $i < 10; $i++) { // Adjust the loop for the number of entries you want
            DB::table('_personaldata')->insert([
                'employeeid' => 'EMP' . $faker->unique()->numerify('###'),
                'plantillaid' => 'PL' . $faker->unique()->numerify('###'),
                'employeecode' => 'E' . $faker->unique()->numerify('###'),
                'lname' => $faker->lastName,
                'fname' => $faker->firstName,
                'mname' => $faker->lastName,
                
                // ... other columns ...
                'isactive' => $faker->boolean,
                'teaching' => $faker->randomElement(['Math', 'Science', 'English']),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
