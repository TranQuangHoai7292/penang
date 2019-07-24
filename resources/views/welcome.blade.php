<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{csrf_token()}}">
        <title>TEAM BUILDING TNR 2019</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="shortcut icon" href="{{asset('images/favicon.png')}}">
        <link href="{{asset('css/style.css')}}" type="text/css" rel="stylesheet">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Styles -->

    </head>
    <body>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="text-align: center">
                    <h5 class="modal-title" id="exampleModalLabel">Nhập Chính Xác Mã Nhân Viên Để Tìm Đồng Đội</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div>
                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="Mã Nhân Viên" id="code">
                        </div>
                        <button type="submit" class="btn btn-primary check-user" id="check-user">Gửi</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="news" style="width: 100%">
            <img src="{{asset('images/penang1.jpg')}}" style="width: 100%">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <h3 style="text-align: center;font-weight: 900;color: black"><strong>TRUY TÌM ĐỒNG ĐỘI</strong></h3>
                    <table class="table table-striped table-dark">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên Đội</th>
                            <th>Thành Viên</th>
                        </tr>
                        </thead>
                        <tbody class="tbody">

                        </tbody>
                    </table>
                </div>
                <div class="col-xl-12" style="text-align: center">
                    <button type="submit" class="btn btn-primary" id="get-question">Tìm Đồng Đội</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 " id="question">

                </div>
            </div>
        </div>
    <div class="news" style="width: 100%">
        <img src="{{asset('images/penang2.jpg')}}" style="width: 100%">
    </div>
    @include('sweet::alert')
    <footer id="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-xm-6 col-sm-3">
                    <div class="logo-footer">
                        <img src="{{asset('images/Footage-03.png')}}">
                    </div>
                </div>
                <div class="col-xm-12 col-sm-5">
                    <div class="defail">
                        <h4 class="title-defail-h4">THÔNG TIN</h4>
                        <p class="title-defail-p"><i class="fas fa-caret-right"></i>VĂN PHÒNG CHÍNH TNR HOLDINGS VIỆT NAM</p>
                        <p class="defail-des"><span style="font-weight: 700">Hà Nội :</span> Tầng 26, TNR Tower, 54A Nguyễn Chí Thanh, Q. Đống Đa, HN</p>
                        <p class="defail-des" style="margin-bottom: 5px"><span style="font-weight: 700">Hồ Chí Minh :</span>Tầng 12, TNR Tower, 180-192 Nguyễn Công Trứ, P. Nguyễn Thái Bình, Q1, TP.HCM</p>
                    </div>
                </div>
                <div class="col-xm-12 col-sm-4">
                    <div class="note">
                        <h4 class="title-defail-h4">Liên Hệ</h4>
                        <p class="defail-des"><i class="fas fa-caret-right"></i>Tel: 0247.306.0099</p>
                        <p class="defail-des"><i class="fas fa-caret-right"></i>Email: tnrholdings@tnrholdings.com.vn</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="{{asset('js/jquery.cookie.min.js')}}"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
        var code = '';
        var token = $('meta[name="csrf-token"]').attr('content');
        if ($.cookie('code') == undefined) {
            var table = '<td colspan="3" style="text-align: center"><h4>Hãy bấm vào nút tìm đồng đội để biết đồng đội mình ở đâu nhé!!!</h4></td>';
            $('.tbody').html(table);
            $('#get-question').click(function () {
                $('#exampleModal').modal('show');
            });
            $('#check-user').click(function(){
                var url = '{{route('check.user')}}' ;
                code =   $('#code').val();
                $.post(url,{'code':code,'_token':token},function(data){
                    if (data){
                        swal('Chào Mừng Bạn ' + data.name,'','success');
                        $.cookie('code',data.code,{expires:1,path:'/'});
                        $.cookie('true',data.status,{expires:1,path:'/'});
                        $.cookie('fail',data.fail,{expires:1,path:'/'});
                        setTimeout(function(){
                            window.location.reload();
                        },1500);
                    }else{
                        swal('Mã Nhân Viên Không Đúng Xin Kiểm Tra Lại','','error');
                    }
                });
            });
        }else{
            $(document).ready(function(){
                if ($.cookie('true') == 0) {
                    if ($.cookie('fail') == 3){
                        var contact = '<p style="text-align: center;font-weight: 900;color:black">Bạn đã trả lời sai 3 lần. Vui lòng liên hệ vơi BTC để biết đội của mình. Xin chia buồn!!!</p>';
                        $('#question').html(contact);
                    }else{
                        code = $.cookie('code');
                        var url = '{{route('get.question')}}';
                        $.post(url, {'code': code, '_token': token}, function (data) {
                            $('#question').html(data);
                        });
                    }

                }else{
                    url = '{{route('get.table')}}';
                    $.post(url,{'_token':token},function(data){
                        $('.tbody').html(data);
                    });
                }
                $('#get-question').hide();
            });
        }
    </script>
    <script>


    </script>
    </body>

</html>
