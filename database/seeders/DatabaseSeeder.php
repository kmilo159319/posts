<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory([
          'name'     =>'pepito perez',
          'email'    =>'correodeprueba@email.com',
          'password' => Hash::make('correodeprueba@email.com8568')
        ])->hasPosts(16)->create();

        \App\Models\User::factory([
            'name'     =>'juanito escarcha',
            'email'    =>'supersayayin2@email.com',
            'password' => Hash::make('supersayayin2@email.com5578')
          ])->hasPosts(30)->create();

          \App\Models\User::factory([
            'name'     =>'kevin espisona',
            'email'    =>'kevinmo45@email.com',
            'password' => Hash::make('kevinmo45@email.com2567')
          ])->hasPosts(53)->create();
    }
}
