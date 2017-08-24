<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    protected $username = 'username';
    protected $nip = 'nip';
    protected $redirectTo = '/dashboard';
    protected $guard = 'web';

    public function getLogin() {
    	if (Auth::guard('web')->check()) {
    		return redirect()->route('dashboard');
    	}
    	return view('login');
    }

    public function postLogin(Request $request) {

    	if (Auth::guard('web')->attempt([
    			'username'=>$request->NipUsername,
    			'password'=>$request->password
    		])) {
    		return redirect()->route('/');
    	} elseif(Auth::guard('web')->attempt([
    			'nip'=>$request->NipUsername,
    			'password'=>$request->password
    		])) {
    		return redirect()->route('/');
    	} else {
    		return 'username / password salah';
    	}
    }

    public function getLogout() {
    	Auth::guard('web')->logout();
    	return redirect()->route('/');
    }
}
