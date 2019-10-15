
    <h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px" class="time-star">
        Xin lỗi vì sự bất tiện này!!!. Chương trình vẫn chưa bắt đầu, mời bạn quay lại trong:<br><br>
        <span id="timer" style="color:red;font-size: 20px;font-weight: 900"></span>
    </h5>
    <form action="<?php echo e(route('check.anwer')); ?>" method="POST" id="question" class="block none">
        <?php echo csrf_field(); ?>
        <?php $stt =1 ; ?>
        <?php $__currentLoopData = $q; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $foryou): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <p style="color: black!important;margin-top:2em;font-weight: 700"><?php echo e($foryou['id']); ?>. <?php echo e($foryou['question']); ?></p>
            <div class="row">
                <div class="col-sm-12">
                    <input type="hidden" name="question[<?php echo e($stt); ?>]" value="<?php echo e($foryou['id']); ?>">
                    <input type="hidden" name="code" value="<?php echo e($code); ?>">
                    <div class="row">
                        <div class="col-sm-6 ">
                            <input type="radio" name="anwer[<?php echo e($stt); ?>]" value="1">
                            A. <?php echo e($foryou['A']); ?>

                        </div>
                        <div class="col-sm-6 ">
                            <input type="radio" name="anwer[<?php echo e($stt); ?>]" value="2">
                            B. <?php echo e($foryou['B']); ?>

                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 ">
                            <?php if($foryou['C'] !== null): ?>
                                <input type="radio" name="anwer[<?php echo e($stt); ?>]" value="3">
                                C. <?php echo e($foryou['C']); ?>

                            <?php endif; ?>
                        </div>
                        <div class="col-sm-6 ">
                            <?php if($foryou['D'] !== null): ?>
                                <input type="radio" name="anwer[<?php echo e($stt); ?>]" value="4">
                                D. <?php echo e($foryou['D']); ?>

                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php $stt++; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <div class="col-sm-12 t-a">
            <input type="submit" class="btn btn-primary check-user" value="Gửi" id="question-value">
        </div>
        <?php

        ?>
    </form>
    <script type="text/javascript">
            var starline = new Date ("October 15, 2019 11:45:00");
            var now = new Date();
            var timeup = starline.setSeconds(starline.getSeconds());
            var counter = setInterval(timer, 1000);
            function timer() {
                now = new Date();
                count = Math.round((timeup - now) / 1000);
                if (now >= timeup) {

                    var change = 'Hãy trả lời đúng câu hỏi kiểm tra văn hóa dành cho bạn. Cố gắng suy nghĩ kỹ và trả lời đúng nhé. Chúc bạn may mắn và đây là 10 câu hỏi của bạn:<br><br>\n' +
                        '        Thời gian để hoàn thành là trước 12h. Hãy chú ý đồng hồ đếm ngược nhé.<br><br>\n' +
                        '        <span id="timer" style="color:red;font-size: 20px;font-weight: 900"></span>';
                    $('.time-star').html(change);
                    $('.block').removeClass('none');
                    var starline1 = new Date ("October 15, 2019 12:00:00");
                    var now1 = new Date();
                    var timeup1 = starline1.setSeconds(starline1.getSeconds());
                    var counter1 = setInterval(timer, 1000);
                    function timer() {
                        now1 = new Date();
                        count1 = Math.round((timeup1 - now1) / 1000);
                        if (now1 > timeup1) {
                            var url = '<?php echo e(route('overtime')); ?>';
                            var code = $.cookie('code');
                            var token = $('meta[name="csrf-token"]').attr('content');
                            $.post(url,{'code':code,'_token':token},function(data){
                                if (data == 1){
                                    window.location = '<?php echo e(route('vote2')); ?>'
                                }
                            });
                            clearInterval(counter1);
                            return;
                        }
                        var hours = Math.floor((count1 / 60 / 60));
                        var seconds = Math.floor((count1 % 60));
                        var minutes = Math.floor((count1 / 60) % 60);
                        document.getElementById("timer").innerHTML = hours + " GIỜ " + minutes + " PHÚT " + seconds + " GIÂY";
                    }
                    clearInterval(counter);
                    return;
                }
                var hours = Math.floor((count / 60 / 60));
                var seconds = Math.floor((count % 60));
                var minutes = Math.floor((count / 60) % 60);
                document.getElementById("timer").innerHTML = hours + " GIỜ " + minutes + " PHÚT " + seconds + " GIÂY";
            }

    </script>

<?php /**PATH /var/www/html/penang/resources/views/question.blade.php ENDPATH**/ ?>