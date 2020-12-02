@extends('layouts.master')
@section('content')
        <section id=background>
            <img src="{{assets('images/x6.png')}}"/>
        </section>
        <div class="container" style="min-height: 70%;display: block">
            <div class="row">
                @if (session('errors'))
                <div class="alert alert-danger" role="alert">
                    {{ session('errors') }}
                </div>
                @endif
                <div class="col-xl-12">
                    <h3 style="text-align: center;font-weight: 900;color: black">
                        <strong class="vote">X6 TINH ANH HỘI TỤ - HỢP SỨC PHÁ BĂNG</strong>
                    </h3>
                </div>
                <div class="col-xl-12" style="text-align: center">
                    <button type="submit" class="btn btn-primary" id="get-question">BẮT ĐẦU CHIA TEAM</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 " id="question">
                </div>
                <div class="col-xl-12">
                    <div class="team"></div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var code = '';
            var token = $('meta[name="csrf-token"]').attr('content');
            if ($.cookie('code') == undefined) {
                $('#get-question').click(function () {
                    $('#exampleModal').modal('show');
                });
                $('#check-user').click(function(){
                    var url = '{{route('check.user')}}' ;
                    code =   $('#code').val();
                    $.post(url,{'code':code,'_token':token},function(data){
                        if (data){
                            swal('Chào Mừng Bạn ' + data.name,'','success');
                            $.cookie('true',data.status,{expires:1,path:'/'});
                            $.cookie('fail',data.fail,{expires:1,path:'/'});
                            $.cookie('vote',data.vote,{expires:1,path:'/'});
                            $.cookie('role',data.role,{expires:1,path:'/'});
                            $.cookie('code',data.code,{expires:1,path:'/'});
                            $.cookie('team',data.team_id,{expires:1,path:'/'});
                            setTimeout(function(){
                                window.location.reload();
                            },1500);
                        }else{
                            swal('Họ Và Tên Bạn Nhập Không Tồn Tại Xin Kiểm Tra Lại','','error');
                        }
                    });
                });
            }else{
                $(document).ready(function() {
                    var link = '{{route('check.user')}}';
                    code = $.cookie('code');
                    var token = $('meta[name="csrf-token"]').attr('content');
                    $.post(link, {'code': code, '_token': token}, function (data) {
                        $.cookie('true', data.status, {expires: 1, path: '/'});
                        $.cookie('team',data.team_id,{expires:1,path:'/'});
                    });
                    console.log($.cookie('team'));
                    console.log($.cookie('true'));
                    if ($.cookie('true') != 0  && $.cookie('team') != 0) {
                        var url_team = "{{route('teams')}}";
                        $.post(url_team,{'code':code,'_token':token},function(data){
                            $('.team').html(data);
                            $('.vote').html('Bạn Đã Tham Gia Chia Đội TeamBuilding 2020 Và Bên Dưới Là Đội Của Bạn');
                            $('#get-question').hide();
                        });
                    }
                    else if ($.cookie('true') != 0 && $.cookie('team') == 0) {
                        var check = '{{route('vote2')}}';
                        window.location = check;
                    }
                    else {
                        var starline = new Date ("September 25, 2020 00:00:00");
                        var now = new Date();
                        var timeup = starline.setSeconds(starline.getSeconds());
                        if (now >= timeup) {
                            token = $('meta[name="csrf-token"]').attr('content');
                            code = $.cookie('code');
                            var url = '{{route('get.question')}}';
                            $.post(url, {'code': code, '_token': token}, function (data) {
                                $('#question').html(data);
                            });
                            $('#get-question').hide();
                        }
                        else {
                            $('#get-question').hide();
                            $('#question').html('<span style="text-align: center;display: block;width: 100%;font-weight: 700;margin-top: 20px;">Chương Trình Vẫn Chưa Tới Thời Gian Được Mở. Xin Quay Lại Vào ngày 25/09/2020 Để Tham Gia Chương Trình. Xin Cảm Ơn!!!</span>');
                        }

                    }
                });
            }
        </script>
    @endsection

