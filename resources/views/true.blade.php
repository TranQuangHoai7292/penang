@extends('layouts.master')
@section('content')

    @if (isset($fail))
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <h3 style="text-align: center;font-weight: 900;color: black"><strong>Kiểm Tra Văn Hóa Giai Đoạn 3</strong></h3>
            </div>
        </div>
        <h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
            Cảm ơn bạn đã tiến hành kiểm tra văn hóa giai đoạn 3 kết quả của bạn là đã trả lời được <span style="color:red">{{5 - count($fail)}}/5 câu hỏi</span>.
            @if (sizeof($fail) > 0)
            Đây là các câu hỏi bạn đã trả lời sai và đáp án của câu hỏi:
                @endif
        </h5>
        @foreach ($fail as $fai)
        <p style="color: black!important;margin-top:2em;font-weight: 700">{{$fai['id']}}. {{$fai['question']}}</p>
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 ">
                            <input type="radio"  value="1" <?php echo $fai['true_question'] == 1 ? 'checked' : '' ?>>
                            A. {{$fai['A']}}
                        </div>
                        <div class="col-sm-6 ">
                            <input type="radio"  value="2" <?php echo $fai['true_question'] == 2 ? 'checked' : '' ?>>
                            B. {{$fai['B']}}
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 ">
                            @if ($fai['C'] !== null)
                                <input type="radio"  value="3" <?php echo $fai['true_question'] == 3 ? 'checked' : '' ?>>
                                C. {{$fai['C']}}
                            @endif
                        </div>
                        <div class="col-sm-6 ">
                            @if ($fai['D'] !== null)
                                <input type="radio"  value="4" <?php echo $fai['true_question'] == 4 ? 'checked' : '' ?>>
                                D. {{$fai['D']}}
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    @endif
    <div class="container" style="padding-top: 0;">
        <div class="row">
            <div class="col-12" style="text-align: center">
                <form id="chiateam">
                    <div class="row">
                        <div class="col-sm-12">
                            <input type="hidden" name="name" value="" >
                        </div>
                        <div class="col-sm-12 t-a">
                            <input type="button" class="btn btn-primary chia-team" value="Bấm Chia Team" id="question-value">
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-12">
                <div class="team">

                </div>
            </div>
        </div>
    </div>
    <script>
        var name = $.cookie('name');
        var url = "{{route('teams')}}";
        var token = "{{csrf_token()}}";
        $('.chia-team').on('click',function(){
            $('input[name=name]').attr('value',$.cookie('name'));
            $.post(url,{'name':name,'_token':token},function(data){
                $('.team').html(data);
            })
        });
    </script>
    @endsection

