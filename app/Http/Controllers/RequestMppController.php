<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RequestMppController extends Controller
{
    public function __construct()
    {
    	$this->middleware('web');
    }

    public function getMppPage()
    {
    	return view('authrequest.mpp');
    }
}
