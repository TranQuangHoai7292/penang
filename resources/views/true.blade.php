@extends('layouts.master')
@section('content')
    <div class="container" style="min-height: 70%;display: block">
        <div class="row">
            <div class="col-xl-12">
                <h3 style="text-align: center;font-weight: 900;color: black"><strong>Kiểm Tra Văn Hóa Giai Đoạn 3 và Khảo Sát Team Building 2019</strong></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12 " id="khaosat">
                <h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
                    Cảm ơn bạn đã tiến hành kiểm tra văn hóa giai đoạn 3 và sau đây là Khảo Sát cho Team Building 2019 sẽ diễn ra vào ngày 02/11/2019 của TNR Holdings Việt Nam.Bạn vui lòng chọn 1 trong 2 khảo sát dưới đây:
                </h5>
                <form action="{{route('vote')}}" method="POST">
                    <div class="row">
                        <div class="col-sm-12">
                            @csrf
                            <input type="hidden" name="code" value="{{$code}}">
                            <div class="row">
                                <div class="col-sm-6">
                                    <input type="radio" name="khaosat" value="1">
                                    Tổ chức Team Building 2 ngày 1 đêm
                                </div>
                                <div class="col-sm-6">
                                    <input type="radio" name="khaosat" value="2">
                                    Tổ chức Team Building 1 ngày
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 t-a">
                            <input type="submit" class="btn btn-primary check-user" value="Gửi" id="question-value">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @endsection

