@extends('layouts.master')
@section('content')
<div class="container" style="min-height: 30%;display: block">
    <div class="row">
        <div class="col-xl-12">
            <h3 style="text-align: center;font-weight: 900;color: black"><strong>VOTE ĐỊA ĐIỂM KHÁCH SẠN - RESORT TẠI ĐÀ LẠT</strong></h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-12 " id="khaosat">
            <h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
                Sau đây là Khảo Sát cho Team Building 2019 sẽ dự kiến sẽ diễn ra vào tháng 11 của TNR Holdings Việt Nam.Bạn vui lòng chọn 1 trong 2 lựa chọn dưới đây:
            </h5>
            <form action="{{route('vote')}}" method="POST" id="vote">
                <div class="row">
                    <div class="col-sm-12">
                        @csrf
                        <input type="hidden" name="code" value="" >
                        <div class="row">
                            <div class="col-sm-12">
                                <input type="radio" name="khaosat" value="1">
                                Ở khách sạn trung tâm Đà Lạt, không có chương trình tập thể vào tối đầu tiên
                            </div>
                            <div class="col-sm-12">
                                <input type="radio" name="khaosat" value="2">
                                Ở Villa xa trung tâm, di chuyển hết 30 phút, không khí trong lành và cảnh đẹp. Dự kiến tổ chức chương trình lửa trại vào tối đầu tiên.
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
<script type="text/javascript">
    $(document).ready(function(){
        $('input[name=code]').attr('value',$.cookie('name'));
    })
</script>
    @endsection
