<h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
    Hãy trả lời đúng câu hỏi kiểm tra văn hóa dành cho bạn. Cố gắng suy nghĩ kỹ và trả lời đúng nhé. Chúc bạn may mắn và đây là 10 câu hỏi của bạn:
</h5>

<form action="{{route('check.anwer')}}" method="POST">
    @csrf
    <?php $stt =1 ; ?>
    @foreach ($q as $foryou)
    <p style="color: black!important;margin-top:2em;font-weight: 700">{{$foryou['id']}}. {{$foryou['question']}}</p>
    <div class="row">
        <div class="col-sm-12">
            <input type="hidden" name="question[{{$stt}}]" value="{{$foryou['id']}}">
            <input type="hidden" name="code" value="{{$code}}">
            <div class="row">
                <div class="col-sm-6 ">
                    <input type="radio" name="anwer[{{$stt}}]" value="1">
                    A. {{$foryou['A']}}
                </div>
                <div class="col-sm-6 ">
                    <input type="radio" name="anwer[{{$stt}}]" value="2">
                    B. {{$foryou['B']}}
                </div>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="row">
                <div class="col-sm-6 ">
                    @if ($foryou['C'] !== null)
                        <input type="radio" name="anwer[{{$stt}}]" value="3">
                        C. {{$foryou['C']}}
                    @endif
                </div>
                <div class="col-sm-6 ">
                    @if ($foryou['D'] !== null)
                        <input type="radio" name="anwer[{{$stt}}]" value="4">
                        D. {{$foryou['D']}}
                    @endif
                </div>
            </div>
        </div>
    </div>
        <?php $stt++; ?>
    @endforeach
    <div class="col-sm-12 t-a">
        <input type="submit" class="btn btn-primary check-user" value="Gửi" id="question-value">
    </div>
</form>
