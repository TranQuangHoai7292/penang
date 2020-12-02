<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
    <meta name="csrf-token" content="{{csrf_token()}}">
    <title>X6 TINH ANH HỘI TỤ - HỢP SỨC PHÁ BĂNG</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="shortcut icon" href="{{asset('images/favicon.png')}}">
    <link href="{{asset('css/style.css')}}" type="text/css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Styles -->
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="{{asset('js/jquery.cookie.min.js')}}"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
</head>
<body>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="text-align: center">
                <h5 class="modal-title" id="exampleModalLabel">Nhập Chính Xác Mã Nhân Viên Để Tiến Hành Bình Chọn</h5>
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
<div class="container logo-top">
    <div class="row">
        <div class="col-12">
            <img src="{{asset('images/logoTNR-01.png')}}">
        </div>
    </div>
</div>
<div class="container header">
    <div class="row">
        <div class="col-12"></div>
    </div>
</div>
@yield('content')
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

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>
</html>
