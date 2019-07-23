<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\VideoMetaDataModel;

class VideoModel extends Model
{
    //
    
    protected $table = "video";
    public function user(){
        return $this->belongsTo(User::class, "created_by");
    }
    public function metaData(){
        return $this->hasOne(VideoMetaDataModel::class,"video_id");
    }
    public function getTotalSize()
    {
        return $this->metaData->sum('size');
    }
   
}
