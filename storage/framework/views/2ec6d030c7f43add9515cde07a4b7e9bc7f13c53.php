<?php $__env->startSection('content'); ?>
        <div class="container" style="min-height: 70%;display: block">
            <div class="row">
                <?php if(session('errors')): ?>
                <div class="alert alert-danger" role="alert">
                    <?php echo e(session('errors')); ?>

                </div>
                <?php endif; ?>
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
                    var url = '<?php echo e(route('check.user')); ?>' ;
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
                    var link = '<?php echo e(route('check.user')); ?>' ;
                    code = $.cookie('code');
                    $.post(link,{'code':code,'_token':token},function(data){
                        $.cookie('true',data.status,{expires:1,path:'/'});
                    });
                    if ($.cookie('true') != 0){
                        var contact = '<p style="text-align: center;font-weight: 900;color:black">Bạn đã tham gia chương trình này rồi</p>';
                        $('#question').html(contact);
                    }
                    else{
                        code = $.cookie('code');
                        var url = '<?php echo e(route('get.question')); ?>';
                        $.post(url, {'code': code, '_token': token}, function (data) {
                            $('#question').html(data);
                        });
                    }
                    $('#get-question').hide();
                });
            }
        </script>
    <?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp7\htdocs\penang\resources\views/welcome.blade.php ENDPATH**/ ?>