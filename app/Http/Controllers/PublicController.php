<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Team;
use App\Preson;
use App\Question;
use Alert;
use Session;
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
        $code = $data['code'];
        $user = Preson::where('code',$data['code'])->first();
        $question = Question::where('category_question',1)->get()->toArray();
        $question1 = Question::where('category_question',2)->get()->toArray();
        if ($user->question_id != null )
        {
            $q_id = $user->question_id;
            $q_array = explode(';',$q_id);
            $q = Question::whereIn('id',$q_array)->get()->toArray();
        }else{
            $array = [];
            $j = 1;
            while ($j < 7 )
            {
                $i = rand(0,198);
                if (in_array($question[$i]['id'], $array)) {

                } else {
                    array_push($array, $question[$i]['id']);
                    $j++;
                }

            }
            $k =1;
            while($k < 5){
                $o = rand(0,15);
                if (in_array($question1[$o]['id'], $array)){

                }else{
                    array_push($array, $question1[$o]['id']);
                    $k++;
                }
            }
            $q = Question::whereIn('id',$array)->get()->toArray();
            $user->question_id = implode(';',$array);
            $user->status = 0;
            $user->save();
        }
        return view('question',compact('q','code'));
    }


    public function checkAnwer(Request $request)
    {
        $true = 0;
        $array = [];
        for ($i=1;$i<=10;$i++){
            if (empty($request->anwer[$i])){
                return redirect()->back()->with('errors','Bạn Chưa Trả Lời Hết Câu Hỏi!!!');
            }else{
                $q = Question::where('id',$request->question[$i])->first();
                if ($q->true_question == $request->anwer[$i]){
                    $true++;
                }else{
                    array_push($array,$q->id);
                }
            }

        }
        $code = $request->code;
        $user = Preson::where('code',$request->code)->first();
        $fail = Question::whereIn('id',$array)->get()->toArray();
        if ($user->status == 1){
            return view ('thanks');
        }else{
            $user->status = 1;
            $user->true = $true;
            $user->save();
            return view('true',compact('code','true','fail'));
        }


    }
    public function vote2(){
        return view('vote2');
    }
    public function thanks()
    {
        return view('thanks');
    }

    public function vote(Request $request)
    {
        if ($request->khaosat != null){
            $user = Preson::where('code',$request->code)->first();
            $user->vote = $request->khaosat;
            $user->save();
            return view('thanks');
        }else{
            return view('vote2')->with('error','Bạn Chưa Lựa Chọn CHo Team Buildings. Mời Bạn Lựa Chọn Lại!!!');
        }

    }

    public function overTime(){
        $data = Input::get();
        $user = Preson::where('code',$data['code'])->first();
        $user->status = 1;
        $user->save();

        return $status = 1;
    }


    public function getTable()
    {
        $data = Input::get();
//        $user = Preson::where('')->where('status',1)->select('id','name','code','team_id')->get()->toArray();
        $user = Preson::where('code',$data['code'])->where('status',1)->select('id','name','code','team_id')->first()->toArray();
        $teams = Team::where('id',$user['team_id'])->first();
        $users = Preson::where('team_id',$user['team_id'])->where('status',1)->get();
        return view('table',compact('users','teams'));
    }
}
