<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
        		'role_id'=>2,
        		'personnel_id'=>2,
        		'username'=>'vina',
        		'nip'=>'1144001',
        		'password'=>bcrypt('ervina'),
        		'remember_token'=>str_random(10),
        	]);
    }
}
