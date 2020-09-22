<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Preson;
use Illuminate\Support\Facades\Auth;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $rows = Preson::where('status',1)->orderBy('team_id','ASC')->get()->toArray();
        return view('home',compact('rows'));
    }

    public function fail()
    {
        $rows = Preson::where('vote','<>',0)->get()->toArray();
        return view('vote',compact('rows'));
    }

    public function join(){
        $rows = Preson::where('status',0)->get()->toArray();
        return view('join',compact('rows'));
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('index');
    }
}
