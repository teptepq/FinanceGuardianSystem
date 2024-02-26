<?php

// database/seeders/NotificationSeeder.php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class NotificationSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 20) as $index) {
            DB::table('tblnotification')->insert([
                'userid' => $faker->numberBetween(1, 10),
                'approval_type' => $faker->randomElement(['approval', 'denial']),
                'status' => $faker->optional(0.7)->randomElement(['pending', 'approved', 'rejected']),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
