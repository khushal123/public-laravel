<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\VideoModel;

class VideoMetaDataModel extends Model
{
    //

    protected $table = "video_meta";
    public function video(){
        return $this->belongsTo(VideoModel::class);
    }
}
