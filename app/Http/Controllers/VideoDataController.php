<?php

namespace App\Http\Controllers;

use App\VideoModel;
use App\VideoMetaDataModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class VideoDataController extends Controller
{
    //

    public function getMetaData($id)
    {

        $videos = VideoModel::with("metaData", "user:id,name")->where("id", $id)->get();
        if ($videos->isEmpty()) {
            return response()->json([
                "status" => 500,
                "data" => 'this is dev message ---video doesn\'t exist',
                "message" => 'Something went wrong',
            ], 400);
        }
        return response()->json([
            "status" => 200,
            "message" => "Video Found",
            "data" => $videos,
        ], 200);
    }
    public function upateVideo(Request $request, $id)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'size' => 'required',
            'views' => "required"]);
        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                "data" => $validator->errors(),
                "message" => 'Something went wrong',
                'message' => "Validation Error",
            ], 400);
        }
        $videoMeta = VideoMetaDataModel::find($id);
        if($videoMeta->isEmpty()){
            return response()->json([
                'status'=>400,
                'message'=>"something went wrong",
                'data'=> "video does not exist"
            ], 400);
        }
        $videoMeta->size = $input['size'];
        $videoMeta->views_count = $input['views'];
        $videoMeta->save();
        return response()->json([
            'status'=>200,
            'message'=>"updated",
            'data'=>$videoMeta
        ], 200);
    }

}
