<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Team;
use App\Preson;
use App\Question;
use Modules\Employe\Entities\Employe;

class PublicController extends Controller
{

    public function index()
    {
        return view('welcome');
    }
    public function checkUser()
    {
        $data = Input::get();
        $user = Preson::where('code',$data['code'])->first();
        if ($user == null){
            return $user;
        }else{
            $user = $user->toArray();
            return $user;
        }

    }

    public function getQuestion()
    {
        $data = Input::get();
        $question = Question::all()->toArray();
        $code = $data['code'];
        $user = Preson::where('code',$data['code'])->first();
        if ($user->question_id != null){
            $q_id = $user->question_id;
            $q = Question::where('id',$q_id)->first();
        }else{
            $i = rand(0,200);
            $q = $question[$i];
            $user->question_id = $i;
            $user->status = 0;
            $user->fail = 0;
            $user->save();
        }
        return view('question',compact('q','code'));
    }

    public function checkAnwer()
    {
        $data = Input::get();
        $anwer = Question::where('id',$data['id_question'])->first();
        $user = Preson::where('code',$data['code'])->first();
        if ($data['anwer'] == $anwer->true_question){
            $user->status = 1;
            $user->save();
            $success = array('success' => 'Chúc mừng bạn đã tra lời đúng. Hãy xem đồng đội bạn là những ai nào!!!');
            return $success;
        }else{
            $question = Question::all()->toArray();
            $i = rand(0,200);
            $q = $question[$i];
            $user->question_id = $i;
            $user->status = 0;
            $user->fail = $user->fail + 1;
            $user->save();
            $con = 3 - $user->fail;
            $error = array('error'=>'Bạn đã trả lời sai bạn còn '.$con.' cơ hội!!','fail'=> $user->fail);
            return $error;
        }
    }

    public function getTable()
    {
        $teams = Team::select('id','name')->get()->toArray();
        $employes = Preson::where('status',1)->select('id','name','code','team_id')->get()->toArray();
        return view('table',compact('teams','employes'));
    }
}
