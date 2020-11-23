<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use App\Team;
use App\Preson;
use App\Question;
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
        if ($user->question_id != null )
        {

            $q_id = $user->question_id;
            $q_array = explode(';',$q_id);
            $q = Question::whereIn('id',$q_array)->get()->toArray();
        }else{

            $array = [];
            $j = 1;
            while ($j < 6 )
            {
                $i = rand(0,11);
                if (in_array($question[$i]['id'], $array)) {

                } else {
                    array_push($array, $question[$i]['id']);
                    $j++;
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
        for ($i=1;$i<=5;$i++){
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
        $user = Preson::where('code',$code)->first();
        $fail = Question::whereIn('id',$array)->get()->toArray();
        $role = $user->role;
        $user->status = 1;
        $user->true = $true;
        $user->save();
        return view('true',compact('code','true','fail','role'));

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
            $user->role = 2;
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
        $user = Preson::where('code',$data['code'])->where('status',1)->select('id','name','code','team_id')->first()->toArray();
        $teams = Team::where('id',$user['team_id'])->first();
        $users = Preson::where('team_id',$user['team_id'])->where('status',1)->get();
        return view('table',compact('users','teams'));
    }



    public function team()
    {
        $data = Input::get('code');
        $user = Preson::where('code',$data)->first();

        if ($user->team_id > 0){
            $all_users = Preson::where('team_id',$user->team_id)->get();
        }else{
            $check_team = Team::where('number_member','<',16)->select('id')->get()->toArray();
            $array = array();
            if (sizeof($check_team) > 0){
                foreach($check_team as $team){
                    $array[$team['id']] =  'Team '.$team['id'];
                }
                $random = array_rand($array);
                $team = Team::where('id',$random)->first();
                $team->number_member = $team->number_member + 1;
                $team->save();
                $user->team_id = $random;
                $user->save();
                $all_users = Preson::where('team_id',$random)->get();
            }else{
                $team = Team::where('id',1)->first();
                $team->number_member = $team->number_member + 1;
                $team->save();
                $user->team_id = 1;
                $user->save();
                $all_users = Preson::where('team_id',1)->get();
            }

        }

        return view('team',compact('all_users'));
    }
}
