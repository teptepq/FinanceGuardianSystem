<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class SubcontractorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        // Auto-incremented employeeid starting from 20240001
        $employeeid = 20240000;

        // Define the number of dummy records you want to create
        $numberOfRecords = 10;

        for ($i = 1; $i <= $numberOfRecords; $i++) {
            DB::table('tblSubcontractor')->insert([
                'employeeid' => ++$employeeid,
                'employee_branch' => 'Dummy Branch ' . $i,
                'employee_department' => 'Dummy Department ' . $i,
                'subcontractor_id' => $i,
                'subcontractor_code' => 'Code' . $i,
                'subcontractor_desc' => 'Description ' . $i,
                'vendor_id' => $i,
                'product_prize' => rand(100, 1000),
                'transac_status' => 'Status ' . $i,
                'employee_review' => 'Review ' . $i,
                'isNotice' => 1, // Default value is 1
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Generate dummy data for the remaining records
        for ($i = $numberOfRecords + 1; $i <= 20; $i++) {
            DB::table('tblSubcontractor')->insert([
                'employeeid' => ++$employeeid,
                'employee_branch' => $faker->word . ' Branch',
                'employee_department' => $faker->word . ' Department',
                'subcontractor_id' => $i,
                'subcontractor_code' => $faker->word . ' Code',
                'subcontractor_desc' => $faker->sentence,
                'vendor_id' => $i,
                'product_prize' => $faker->randomFloat(2, 100, 1000),
                'transac_status' => $faker->word . ' Status',
                'employee_review' => $faker->paragraph,
                'isNotice' => $faker->boolean(),
                'created_at' => $faker->dateTimeBetween('-1 year', 'now'),
                'updated_at' => $faker->dateTimeBetween('-1 year', 'now'),
            ]);
        }
    }
}

