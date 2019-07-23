<?php

namespace App\Http\Controllers;

use App\User;

class UsersController extends Controller
{
    //
    public function getTotalVideoSize($username)
    {
        $user = User::with('videos.metaData')->where("username", $username)->get(['id','name']);
        $sum = $user->first()->videos()->first()->getTotalSize();
      
        if ($user->isEmpty()) {
            return response()->json([
                "status" => 500,
                "data" => 'this is dev message ---user doesn\'t exist',
                "message" => 'Something went wrong',
            ], 400);
        }
        return response()->json([
            "status" => 200,
            "message" => "Data Found",
            'total_size_mb' => $sum,
            "data" => $user->first()
        ], 200);
    }
}
