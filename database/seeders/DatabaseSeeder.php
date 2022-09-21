<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

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
          'password' =>'correodeprueba@email.com8568'
        ])->hasPosts(6)->create();

        \App\Models\User::factory([
            'name'     =>'juanito escarcha',
            'email'    =>'supersayayin2@email.com',
            'password' =>'supersayayin2@email.com5578'
          ])->hasPosts(10)->create();

          \App\Models\User::factory([
            'name'     =>'kevin espisona',
            'email'    =>'kevinmo45@email.com',
            'password' =>'kevinmo45@email.com2567'
          ])->hasPosts(3)->create();
    }
}
