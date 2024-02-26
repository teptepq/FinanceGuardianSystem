<?php
namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\FileApproval;
use App\Models\User; // Make sure to include the correct model namespace

$factory->define(FileApproval::class, function (Faker $faker) {
    return [
        'user_id' => function () {
            return factory(User::class)->create()->id;
        },
        'file_path' => $faker->file('public/uploads', 'storage/app/uploads', false),
        'status' => $faker->randomElement(['pending', 'approved', 'rejected']),
    ];
});
