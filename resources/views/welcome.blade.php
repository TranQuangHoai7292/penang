@extends('layouts.master')
@section('content')
        <div class="container" style="min-height: 70%;display: block">
            <div class="row">
                <div class="col-xl-12">
                    <h3 style="text-align: center;font-weight: 900;color: black"><strong>Kiểm Tra Văn Hóa Giai Đoạn 3 và Khảo Sát Team Building 2019</strong></h3>
                </div>
                <div class="col-xl-12" style="text-align: center">
                    <button type="submit" class="btn btn-primary" id="get-question">Bắt Đầu Khảo Sát</button>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12 " id="question">
                </div>
            </div>
        </div>
    @endsection

