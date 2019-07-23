<?php

namespace Tests\Unit;

use Tests\TestCase;


class VideoTest extends TestCase
{
   
    public function get_user_total_video_count_by_username()
    {
        $response = $this->get('/api/users/kk123/videos');
        $response->assertStatus(200);
    }

    public function get_video_meta_data_by_video_id(){
        $response = $this->get('/api/video/1');
        $response->assertStatus(200);
    }
}
