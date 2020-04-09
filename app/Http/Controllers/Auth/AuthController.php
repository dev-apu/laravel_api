<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\User;
use Validator;


class AuthController extends Controller
{
	 public function index()
    {
        return response()->json(User::get(), 200);
    }

    public function register(Request $request){
    	$validatedData = $request->validate([
            'name' => 'required|min:3',
            'email' => 'required',
            'password' => 'required'
        ]);

        $validatedData['password'] = bcrypt($validatedData['password']);

        $user = User::create($validatedData);
        $accessToken = $user->createToken('authToken')->accessToken;
        return response(['user' => $user, 'access_token' => $accessToken]);
        //return response()->json($post, 201);
    }

    public function login(Request $request){
    	$loginData = $request->validate([
    		'email' => 'required',
    		'password' => 'required'
    	]);

    	$user = User::where("email", $request->email)->first();

    	if(!auth()->attempt($loginData)){
    		return response(['status' => 'error', 'message' => 'Invalid Credentials']);
    	}

        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        return response(['user' => auth()->user(), 'access_token' => $accessToken]);

    }
}
