<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        // Generate and insert 10 records
        for ($i = 0; $i < 10; $i++) {
            $cid = rand(0, 3); // Random number between 0 and 3
            $descid = $this->getDescriptionById($cid);

            DB::table('users')->insert([
                'cid' => $cid,
                'descid' => $descid,
            ]);
        }
    }

    // Get description by id
    private function getDescriptionById($id)
    {
        switch ($id) {
            case 0:
                return 'Superadmin';
            case 1:
                return 'Admin';
            case 2:
                return 'Manager';
            case 3:
                return 'Customer';
            default:
                return null;
        }
    }
}
