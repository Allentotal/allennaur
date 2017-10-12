$(function(){
    // 通过设置本flag动态判断显示区域状态
    var disFlag = false;
    var floatFlag = false;
    var whichFloat = 0;
    $("#personInfoArea").hide();
    $("#floatPersonInfoArea").hide();
    $("#topFloat").hide();
    $("#personInfo,#headView,#floatHeadView,#floatPersonInfo").click(function(e){
        var thisId = $(this).attr("id");
        if(thisId == "personInfo" || thisId == "headView"){
            $("#personInfoArea").slideToggle();
            whichFloat = 0;
        }else{
            $("#floatPersonInfoArea").slideToggle();
            whichFloat = 1;
        }
        e.stopPropagation(); //跳过本次事件：点击body时不执行
        //判断是否通过点击该处关闭，若是则不通过点击其他空白区关闭
        if(!disFlag){
            disFlag = true;
        }else{
            disFlag = false;
        }
    })
    // $("#personInfoArea").hover(function(){},function(e){
    // 	$("#personInfoArea").slideToggle();
    // 	e.stopPropagation();
    // 	disFlag = false;
    // })
    // $("#floatPersonInfoArea").hover(function(){},function(e){
    // 	$("#floatPersonInfoArea").slideToggle();
    // 	e.stopPropagation();
    // 	disFlag = false;
    // })
    // 当鼠标点击个人信息区域外时关闭该区域
    $("body").click(function(){
        if(disFlag && whichFloat == 0){
            $("#personInfoArea").slideToggle();
            disFlag = false;
        }
        if(disFlag && whichFloat == 1){
            $("#floatPersonInfoArea").slideToggle();
            disFlag = false;
        }
    })
    // 检测用户滚动页面事件
    $(window).scroll(function(){
        var topHeight = $(window).scrollTop();
        if(topHeight > 250){
            // alert(1);
            if (!floatFlag) {
                $("#topFloat").slideToggle();
                floatFlag = true;
            }
        }else{
            $("#topFloat").hide();
            floatFlag = false;
        }
    })
})
