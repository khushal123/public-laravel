<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
class VideoMetaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $videoIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        for ($i =0; $i < 10; $i++) {
            $randIndex = array_rand($videoIds);
            DB::table('video_meta')->insert([
                'video_id' => $videoIds[$randIndex],
                'views_count' => rand(10, 1000),
                'size' => rand(5, 100), //in mb always
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')]);
        }
    }
}
