<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
         //User::factory(10)->create();

        // Role::factory()->create([
        //     'id_role' => 1,
        //     'nom' => 'admin',
        // ]);
       // Role::create(['nom' => 'admin']);
       // Role::create(['nom' => 'medcin']);
       User::factory()->create([
        'name' => 'mohamed',
        'email' => 'mohamed@gmail.com',
        'password'=>'mohamed@gmail.com',
        'active'=>1,
        "id_role"=>2
    ]);
    }
}
