<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
    * Run the database seeds.
    *
    * @return void
    */
    public function run()
    {
        //
        $users = [
            [
                'name' => 'Khushal',
                'username'=>'kk123',
                'email' => 'khushal@bootxd.com',
                'password' =>  Hash::make("123"),
            ], 
            [
                'name' => 'Ryan',
                'username'=>'ryan123',
                'email' => 'ryan@bootxd.com',
                'password' => Hash::make("123"),
            ], 
            [
                'name' => 'Caroline',
                'username'=>'caroline123',
                'email' => "caroline@bootxd.com",
                'password' =>  Hash::make("123"),
                ]
            ];
            
            for($i =0; $i < count($users); $i++){
                DB::table('users')->insert([
                    'name' => $users[$i]['name'],
                    'email' => $users[$i]['email'],
                    'username'=> $users[$i]['username'],
                    'password' => $users[$i]['password'],
                    'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                    'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
                    ]);
                }
            }
        }
        