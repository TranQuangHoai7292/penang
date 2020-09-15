@extends('layouts.master')
@section('content')
        <div class="container" style="min-height: 70%;display: block">
            <div class="row">
                @if (session('errors'))
                <div class="alert alert-danger" role="alert">
                    {{ session('errors') }}
                </div>
                @endif
                <div class="col-xl-12">
                    <h3 style="text-align: center;font-weight: 900;color: black"><strong>VOTE ĐỊA ĐIỂM KHÁCH SẠN - RESORT TẠI ĐÀ LẠT</strong></h3>
                </div>
                <div class="col-xl-12" style="text-align: center">
                    <button type="submit" class="btn btn-primary" id="get-question">BẮT ĐẦU VOTE</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 " id="question">
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var name = '';
            var token = $('meta[name="csrf-token"]').attr('content');
            if ($.cookie('name') == undefined) {
                $('#get-question').click(function () {
                    $('#exampleModal').modal('show');
                });
                $('#check-user').click(function(){
                    var url = '{{route('check.user')}}' ;
                    name =   $('#code').val();
                    $.post(url,{'name':name,'_token':token},function(data){
                        if (data){
                            swal('Chào Mừng Bạn ' + data.name,'','success');
                            $.cookie('name',data.name,{expires:1,path:'/'});
                            setTimeout(function(){
                                window.location.reload();
                            },1500);
                        }else{
                            swal('Họ Và Tên Bạn Nhập Không Tồn Tại Xin Kiểm Tra Lại','','error');
                        }
                    });
                });
            }else{
                $(document).ready(function(){
                    var link = '{{route('check.user')}}' ;
                    name = $.cookie('name');
                    $.post(link,{'name':name,'_token':token},function(data){
                        console.log(data);
                        if (data.vote != 0 && data.role == 2){
                            var contact = '<p style="text-align: center;font-weight: 900;color:black">Bạn đã tham gia chương trình này rồi</p>';
                            $('#question').html(contact);
                        }
                        else {
                                var check = '{{route('vote2')}}';
                                window.location = check;
                        }
                    });
                    $('#get-question').hide();
                });
            }
        </script>
    @endsection

