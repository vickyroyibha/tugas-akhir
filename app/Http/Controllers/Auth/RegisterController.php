<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
    {
    use RegistersUsers;
    
    public function showRegistrationForm()
    {
        return view('adminlte::auth.register');
    }

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest');
    }

    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name'     => 'required|max:255',
            'username' => 'sometimes|required|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
            'terms'    => 'required',
        ]);
    }

    protected function create(array $data)
    {
        $fields = [
            'name'     => $data['name'],
            'username' => $data['username'],
            'password' => bcrypt($data['password']),
        ];
        return User::create($fields);
    }
}
