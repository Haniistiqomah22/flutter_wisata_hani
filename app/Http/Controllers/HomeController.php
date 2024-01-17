<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\TambahWisata;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;


class HomeController extends Controller
{
    public function index() {
        $user = User::all();

        return response()->json($user, 200);
    }

    public function register(Request $request) {
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'User',
        ]);

        if($user){
            return response()->json(['message' => 'succesfuly'], 201);
        }
    }

    public function login(Request $request){
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = $user->createToken('kode_rahasia')->accessToken;
            $token = $user->createToken('kode_rahasia')->plainTextToken;

            return response()->json(['token' => $token, 'role'=> $user->role], 200);
        }

        throw ValidationException::withMessages([
            'email' => ['The provided credentials are incorrect.'],
        ]);
    }
}