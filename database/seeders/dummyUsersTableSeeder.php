<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;


class dummyUsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {

            $dfault = "dummy";
            $timestamp = now(); // Get the current timestamp

            DB::table('users')->insert([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'password' => bcrypt($dfault), // You can use bcrypt() to hash passwords
                'usertype' => rand(0, 3),  // Generate a random value between 0 and 3
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
            ]);
        }
    }
}
