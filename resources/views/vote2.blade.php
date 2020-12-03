@extends('layouts.master')
@section('content')
    <div class="container" style="padding-top: 0;">
        <div class="row">
            <div class="col-xl-12">
                <h3 style="text-align: center;font-weight: 900;color: black"><strong>TEAM BUILDING 2020</strong></h3>
            </div>
        </div>
        <h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
           Bạn Đã Vượt Qua Câu Hỏi Văn Hóa Nhưng Vẫn Chưa Chọn Chia Đội. Vui Long Click Nút Bên Dưới Để Chia Đội Cho Mình!!!
        </h5>
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
        var code = $.cookie('code');
        var url = "{{route('teams')}}";
        var token = "{{csrf_token()}}";
        $('.chia-team').on('click',function(){
            $.post(url,{'code':code,'_token':token},function(data){
                $('.team').html(data);
            })
        });
    </script>
    @endsection
