<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{

    use AuthenticatesUsers {
        attemptLogin as attemptLoginAtAuthenticatesUsers;
    }

   public function showLoginForm()
    {
        return view('adminlte::auth.login');
    }

    protected $redirectTo = '/home';

    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    public function username()
    {
        return config('auth.providers.users.field','email');
    }

    protected function attemptLogin(Request $request)
    {
        if ($this->username() === 'email') return $this->attemptLoginAtAuthenticatesUsers($request);

        return $this->attempLoginUsingUsernameAsAnEmail($request);
    }

    protected function attempLoginUsingUsernameAsAnEmail(Request $request)
    {
        return $this->guard()->attempt([
            'username' => $request->input('username'),
            'password' => $request->input('password')
        ], $request->has('remember'));
    }
}
