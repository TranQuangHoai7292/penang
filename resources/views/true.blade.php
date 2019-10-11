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
            Cảm ơn bạn đã tiến hành kiểm tra văn hóa giai đoạn 3 kết quả của bạn là đã trả lời được <span style="color:red">{{10 - count($fail)}}/10 câu hỏi</span>. Đây là các câu hỏi bạn đã trả lời sai và đáp án của câu hỏi:
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
    <div class="container" style="min-height: 30%;display: block">
        <div class="row">
            <div class="col-xl-12">
                <h3 style="text-align: center;font-weight: 900;color: black"><strong>Khảo Sát Team Building 2019</strong></h3>
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
                            <input type="hidden" name="code" value="{{$code}}" >
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

