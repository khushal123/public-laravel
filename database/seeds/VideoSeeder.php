<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
class VideoSeeder extends Seeder
{
    /**
    * Run the database seeds.
    *
    * @return void
    */
    public function run()
    {
        //
        $usreIds = [1, 2, 3];
        for ($i =0; $i < 10; $i++) {
            $randIndex = array_rand($usreIds);
            DB::table('video')->insert([
                'created_by' => $usreIds[$randIndex],
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        }
    }
}