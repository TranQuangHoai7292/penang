<h5 style="color:black;font-weight: 700;text-align: center;margin-bottom: 20px">
    Hãy trả lời đúng câu hỏi kiểm tra văn hóa dành cho bạn. Cố gắng suy nghĩ kỹ và trả lời đúng nhé. Chúc bạn may mắn và đây là 10 câu hỏi của bạn:
</h5>

<form action="<?php echo e(route('check.anwer')); ?>" method="POST">
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
</form>
<?php /**PATH C:\xampp7\htdocs\penang\resources\views/question.blade.php ENDPATH**/ ?>