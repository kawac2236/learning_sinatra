$(function(){
    //削除したときの挙動
    $('.delete').on('click',function(){
        var li = $(this).parent();
        if(!confirm('sure?')){
            return;
        }
        $.post('/destroy',{
            id: li.data('id'),
            _csrf: li.data('token') //tokenの受け取りはgemがうまくやってくれる
        }, function(){
            li.fadeOut(800);
        });
    });
})