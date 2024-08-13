<?php

namespace App\Http\Controllers\authentications;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginBasic extends Controller
{
  public function index()
  {
    $pageConfigs = ['myLayout' => 'blank'];
    return view('content.authentications.auth-login-basic', ['pageConfigs' => $pageConfigs]);
  }

  public function login(Request $request)
  {
    // dd($request->all());
    $request->validate([
      'username' => 'required',
      'password' => 'required',
    ]);

    if (Auth::guard('admin')->attempt(['username' => $request->username, 'password' => $request->password])) {
      // Authentication passed
      // dd("success");
      return redirect()->route('app-ecommerce-dashboard');
    } else {
      // Authentication failed
      return redirect()->route('auth-login-basic')->withErrors(['error' => 'Not authorized. Please check your credentials and try again.']);
    }
  }

  public function logout(Request $request)
  {
    
    Auth::guard('admin')->logout();
    return redirect()->route('auth-login-basic');
  }

}
