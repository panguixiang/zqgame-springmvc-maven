/**这个js是一个公用包**/

/**
 * 官网前台主菜单鼠标移入移出效果
 */
function g(obj) { return (typeof obj == 'object') ? obj : document.getElementById(obj); }
var meanShow =function(){
	g("mod_mnav").onmouseover = function () { g('mod_nav').style.display = 'block'; };
	g("mod_mnav").onmouseout = function () { g('mod_nav').style.display = 'none'; };
	g("mod_nav").onmouseover = function () { g('mod_nav').style.display = 'block'; };
	g("mod_nav").onmouseout = function () { g('mod_nav').style.display = 'none'; };
};


/**
 * bwart.html页面里一键视频，一键壁纸，一键音乐这样的 控制鼠标移动上面就显示与隐藏DOM的方法
 * **/
function setTab(name, cursel, n) {
	for (var i = 1; i <= n; i++) {
		var menu = g(name + i);
		var con = g("con_" + name + "_" + i);
		menu.className = i == cursel ? "hover" + name + cursel : "hover" + name + "_" + i;
		con.style.display = i == cursel ? "block" : "none";
	}
}



var curShowDiv = ""; //当前显示的层
var curDivWidth = 0; //当前层的宽度
var curDivHeight = 0; //当前层的高度
var common = {
    setPosition: function (divName, divWidth, divHeigth) {
        //函数说明：设置divName对象位置
        var bw = $(window).width();
        var bh = $(window).height();
        var st = $(document).scrollTop();
        var objw = divWidth;
        var objh = divHeigth;
        objw = (bw - objw) / 2;
        objw = objw < 0 ? 0 : objw;
        objh = (bh - objh) / 2;
        objh = objh < 0 ? 0 : objh;
        $("#" + divName).css("left", objw + "px");
        $("#" + divName).css("top", (objh + st) + "px");
        //设置滤镜宽高
                var totalw = $(document.body).width();
                var totalh = $(document).height();
//        var totalw = window.screen.availWidth;
//        var totalh = window.screen.availHeight;

        $("#divBacking").css("width", totalw + "px");
        $("#divBacking").css("height", totalh + "px");

        curShowDiv = divName;
        curDivWidth = divWidth;
        curDivHeight = divHeigth;
    },
    setIframe: function (width, height, src) {
        //函数说明:设置iframe的宽，高，链接路径
        $("#divframe").css("width", width + "px");
        $("#divframe").css("height", height + "px");
        $("#iframe").css("width", width + "px");
        $("#iframe").css("height", height + "px");
        $("#iframe").attr("src", src);
    },

    showWin: function () {
        //函数说明：打开显示层
        if ($.browser.msie && $.browser.version == "6.0") {
            $("#divBacking").show();
            $("#divframe").show();
        } else {
            $("#divBacking").fadeIn(1000);
            $("#divframe").fadeIn(1000);
        }
    },
    closeWin: function () {
        //函数说明：关闭当前显示的层
        if ($.browser.msie && $.browser.version == "6.0") {
            $("#divframe").hide();
            $("#divBacking").hide();
        } else {
            $("#divframe").fadeOut(1000);
            $("#divBacking").fadeOut(1000);
        }
        this.setPosition("divframe", "0", "0");
        this.setIframe("0", "0", "#");
    }
};


/*指定日期格式转化  fmt为日期格式*/
function dateFmt(dateStr, fmt) {  
	var dateThis = new Date(dateStr);
    var o = {     
    "M+" : dateThis.getMonth()+1, //月份     
    "d+" : dateThis.getDate(), //日     
    "h+" : dateThis.getHours()%12 == 0 ? 12 : dateThis.getHours()%12, //小时     
    "H+" : dateThis.getHours(), //小时     
    "m+" : dateThis.getMinutes(), //分     
    "s+" : dateThis.getSeconds(), //秒     
    "q+" : Math.floor((dateThis.getMonth()+3)/3), //季度     
    "S" : dateThis.getMilliseconds() //毫秒     
    };     
    var week = {     
    "0" : "\u65e5",     
    "1" : "\u4e00",     
    "2" : "\u4e8c",     
    "3" : "\u4e09",     
    "4" : "\u56db",     
    "5" : "\u4e94",     
    "6" : "\u516d"    
    };     
    if(/(y+)/.test(fmt)){     
        fmt=fmt.replace(RegExp.$1, (dateThis.getFullYear()+"").substr(4 - RegExp.$1.length));     
    }     
    if(/(E+)/.test(fmt)){     
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "\u661f\u671f" : "\u5468") : "")+week[dateThis.getDay()+""]);     
    }     
    for(var k in o){     
        if(new RegExp("("+ k +")").test(fmt)){     
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));     
        }     
    }     
    return fmt;     
};
/*鼠标移入，移出改变图片*/
function MM_swapImage(imageId,imagePath){ 
	  $("#"+imageId).attr("src",imagePath);
  }
  function MM_swapImgRestore(imageId,imagePath){
	  $("#"+imageId).attr("src",imagePath);
  }
  /* 快速注册成功后 */
  function showDiv1(url, w, h) {
	    common.setPosition("divframe", w, h);
	    common.setIframe(w, h, url);
	    common.showWin();
	 }  
  /**
   * 水平折叠菜单 样式控制
   * @param obj
   */
  function HoverLi(obj) {
  	var objs = obj.parentNode.childNodes;
  	var total = objs.length; 
  	for ( var i = 0; i < total; i++) {
  		var t = objs[i].childNodes.length; 
  		for ( var j = 0; j < t; j++) {
  			if(objs[i].childNodes[j].className== 'hovernews_b1'){
  				objs[i].childNodes[j].className = 'hovernews_b_1';
  			};
  		}
  	}
  	obj.childNodes[0].className = 'hovernews_b1';
  } 
  /**
   * 通常同步分页列表页面初始化
   * @param listUrl
   */
  function gotoList(listUrl) {
		location.href=listUrl;
} 