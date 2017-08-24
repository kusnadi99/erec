<?php

use Illuminate\Database\Seeder;
use App\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::insert([
        		['nama_role'=>'Admin'],
        		['nama_role'=>'Request'],
        		['nama_role'=>'Prepared'],
        		['nama_role'=>'Recommended'],
        		['nama_role'=>'Approval'],
        		['nama_role'=>'Candidate']
        	]);
    }
}
