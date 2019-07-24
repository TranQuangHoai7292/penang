<h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">Hãy trả lời đúng câu hỏi để có thể chọn Đội cho bạn. Cố gắng suy nghĩ kỹ và trả lời đúng nhé, bạn chỉ có 3 cơ hội thôi.
    Và đây là câu hỏi của bạn:
</h5>
<p style="color: black!important;">{{$q['id']}}. {{$q['question']}}</p>


<div class="row">
    <div class="col-sm-12">
        <input type="hidden" name="id_question" value="{{$q['id']}}">
        <input type="hidden"    name="code" value="{{$code}}">
        <div class="row">
            <div class="col-sm-6 ">
                <input type="radio" name="gender" value="1">
                A. {{$q['A']}}
            </div>
            <div class="col-sm-6 ">
                <input type="radio" name="gender" value="2">
                B. {{$q['B']}}
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-6 ">
                @if ($q['C'] !== null)
                    <input type="radio" name="gender" value="3">
                    C. {{$q['C']}}
                @endif
            </div>
            <div class="col-sm-6 ">
                @if ($q['D'] !== null)
                    <input type="radio" name="gender" value="4">
                    D. {{$q['D']}}
                @endif
            </div>
        </div>
    </div>
    <div class="col-sm-12 t-a">
        <input type="submit" class="btn btn-primary check-user" value="Gửi" id="question-value">
    </div>
</div>
<script>
    var fail = 0;
    $('#question-value').click(function(){
        var anwer = $('input[name=gender]:checked').val();
        var token = $('meta[name="csrf-token"]').attr('content');
        var code = $('input[name=code]').val();
        var question = $('input[name=id_question]').val();
        var url = '{{route('check.anwer')}}';
        $.post(url,{'anwer':anwer,'code':code,'_token':token,'id_question':question},function(data){
            if (data.success){
                swal(data.success,'','success');
                var success = 1;
                $.cookie('true',success,{expires:1,path:'/'});
                setTimeout(function(){
                    window.location.reload();
                },1500);
            }else{
                swal(data.error,'','error');
                $.cookie('fail',data.fail,{expires:1,path:'/'});
                setTimeout(function(){
                    window.location.reload();
                },1500);
            }
        })
    });
</script>
