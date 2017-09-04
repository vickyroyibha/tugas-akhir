<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Http\JsonResponse;

class ResetPasswordController extends Controller
{
    use ResetsPasswords;

    public function reset(Request $request)
    {
        $this->validate($request, $this->rules(), $this->validationErrorMessages());

        $response = $this->broker()->reset(
            $this->credentials($request), function ($user, $password) {
            $this->resetPassword($user, $password);
            }
        );

       
        return $response == Password::PASSWORD_RESET
            ? $this->sendResetResponse($request, $response)
            : $this->sendResetFailedResponse($request, $response);
    }

    protected function sendResetResponse(Request $request,$response)
    {
        if ($request->expectsJson()) {
            return response()->json([
                'status' => trans($response)
            ]);
        }
        return redirect($this->redirectPath())
            ->with('status', trans($response));
    }

    protected function sendResetFailedResponse(Request $request, $response)
    {
        if ($request->expectsJson()) {
            return new JsonResponse(['email' => trans($response) ], 422);
        }
        return redirect()->back()
            ->withInput($request->only('email'))
            ->withErrors(['email' => trans($response)]);
    }

    public function showResetForm(Request $request, $token = null)
    {
        return view('adminlte::auth.passwords.reset')->with(
            ['token' => $token, 'email' => $request->email]
        );
    }

    public function __construct()
    {
        $this->middleware('guest');
    }
}
