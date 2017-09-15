<?php
namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

class Home4Controller extends Controller
{
    public function show()
    {
    	return view('vendor/adminlte/home4');
    }
}