<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RequestHomeController extends Controller
{
    public function __construct()
    {
    	$this->middleware('web');
    }

    public function getHomePage()
    {
    	return view('authrequest.home');
    }
}
