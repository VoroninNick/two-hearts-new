$(document).ready(function() {



    $('#back_top').click(function () {
        $("body").animate({ scrollTop: 0 }, 1000);
        //$("body").effect("bounce", { direction:'up', times:4, distance:31 }, 450);
        return false;
    });

    $('#services-page').each(function(){
        $('#catalog-list > ul > li > span ').click(function(){
           var $link = $(this);
           var $li = $link.parent();
           $li = $($li);
            var $sub_ul = $li.find('> ul');
            if($sub_ul.length > 0){
                $sub_ul.css({display:'block'});
            }
        });
    });

});
