<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<HEAD><title>活动中心-《兵王》官方首页</title>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<link rel="stylesheet" href="/css/global.css" type="text/css" media="all"/>
<link href="/css/page.css" rel="stylesheet" type="text/css" />
<SCRIPT type=text/javascript src="http://static.zqgame.com/js/jquery-1.7.2.js"></SCRIPT>
<SCRIPT type=text/javascript src="http://bw.zqgame.com/js/init.js"></SCRIPT>
<SCRIPT type=text/javascript src="http://static.zqgame.com/js/common.js"></SCRIPT>
<SCRIPT type=text/javascript src="http://static.zqgame.com/js/page.js"></SCRIPT>
<script type="text/javascript" src="http://static.zqgame.com/js/swfobject.js"></script>
<!-- 最新广告代码 begin-->
<script type="text/javascript" src="http://tj.zqgame.com/js/jquery.cookie.js"></script>
<script type="text/javascript" src="http://tj.zqgame.com/js/common-cookie-util.js"></script>
<script type="text/javascript">
var click_time=new Date().getTime();
var _bdhmProtocol = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "tj.zqgame.com/js/ZA.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- 最新广告代码 end-->
<!--头部 begin-->
<script type="text/javascript" src="http://top.zqgame.com/ad/js/indexInit.js"></script>
<link rel="stylesheet" href="http://top.zqgame.com/ad/style/public.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="http://top.zqgame.com/ad/style/top.css"/>
<!--头部 end-->
<script src=" http://stats.zqgame.com/ZQGwStats/Script/adClick20120229.js?type=1" id="zqgameStats" type="text/javascript"></script>
<script type=text/javascript>
  $(document).ready(function(){
	//分页 
	 showPage2({
	     url:"/index/bwact/page",
		 pagerDiv:"#AspNetPager1", 
		 page_size:6,//默认每页显示的行数
		 currentPage:"${pager.currentPage}",
		 totalPages:"${pager.totalPages}"}); 
	  meanShow();
  });
</script> 
</head>
<body>
<!--头部 begion-->
<script type="text/javascript" src="http://top.zqgame.com/ad/ads.js"></script>
<div style="display:none">
<script type="text/javascript" src="http://top.zqgame.com/ad/baidu.js"></script>
</div>
<!--头部 end-->
<div class="index">
  <div class="container fix">
    <div class="head">
	<div class="nav" id="mod_mnav">
<ul>
<li><a href="/IndexMain.html" target="_blank" class="li_1"><img src="/images/nav_01_1009.jpg" width="65" height="81" /></a></li>
<li><a href="http://pay.zqgame.com/" target="_blank" ><img src="/images/nav_02_1009.jpg" width="104" height="81" /></a></li>
<li><a href="/article/index/page/1/30/tag/gamenews.html" target="_blank"><img src="/images/nav_03_1009.jpg" width="105" height="81" /></a></li>
<li><a href="/ziliao.shtml" target="_blank"><img src="/images/nav_04_1009.jpg" width="105" height="81" /></a></li>
<li><a href="/IndexMain.html" target="_blank"><img src="/images/nav_05.gif" width="201" height="145" /></a></li>
<li><a href="/download.shtml" target="_blank"><img src="/images/nav_06_1009.jpg" width="105" height="81" /></a></li>
<li><a href="http://kf.zqgame.com/" target="_blank"><img src="/images/nav_07_1009.jpg" width="105" height="81" /></a></li>
<li><a href="/index/bwact/page/1/6/tag/1.html" target="_blank"><img src="/images/nav_08_1009.jpg" width="105" height="81" /></a></li>
<li><a href="http://bbs.zqgame.com/forum.php?mod=forumdisplay&fid=125" target="_blank"><img src="/images/nav_09_1009.jpg" width="65" height="81" /></a></li>
</ul>
</div>
<div class="clearfix" id="mod_nav">
<img src="/images/nav.gif" border="0" usemap="#Map" />
<map name="Map" id="Map">
<area shape="rect" coords="193,15,248,33" href="/article/index/page/1/30/tag/gamenews.html" target="_blank" alt="3-1"/>
<area shape="rect" coords="191,36,246,55" href="/article/index/page/1/30/tag/bulletin.html" target="_blank"  alt="3-2"/>
<area shape="rect" coords="192,58,248,75" href="/article/index/page/1/30/tag/actnews.html" target="_blank"  alt="3-3"/>
<area shape="rect" coords="191,79,248,96" href="/article/index/page/1/30/tag/maintenance.html" target="_blank"  alt="3-4"/>
<area shape="rect" coords="297,13,351,33" href="/ziliao.shtml" target="_blank"  alt="4-1"/>
<area shape="rect" coords="297,35,352,55" href="/ziliao.shtml" target="_blank"  alt="4-2"/>	
<area shape="rect" coords="298,57,352,78" href="/ziliao.shtml" target="_blank"  alt="4-3"/>
<area shape="rect" coords="298,80,354,97" href="/ziliao.shtml" target="_blank"  alt="4-4"/>
<area shape="rect" coords="602,14,658,34" href="/download.shtml" target="_blank"  alt="5-1"/>
<area shape="rect" coords="602,36,657,53" href="/picture/bwart.shtml?2" target="_blank"  alt="5-2"/>
<area shape="rect" coords="601,57,659,76" href="/picture/bwart.shtml?3" target="_blank"  alt="5-3"/>
<area shape="rect" coords="601,79,659,98" href="/article/pictureList/page/1/6/tag/picGame.html" target="_blank"  alt="5-4"/>
<area shape="rect" coords="704,12,761,33" href="http://passport.zqgame.com/zqbwtxz/passport/myPassPort.do" target="_blank"  alt="6-1"/>
<area shape="rect" coords="704,35,761,53" href="http://passport.zqgame.com/zqbwtxz/passport/transfore.do?menu=resettwopwd" target="_blank"  alt="6-2"/>
</map> </div>
    </div>
    <div id="h"></div>
    <div class="center">
    <!----------左侧列表开始-----------> 
   <div class="dlc">
   <div id="wd_index" class="wd_index"></div>
   <script type="text/javascript">
   var so = new SWFObject("/img/flash/wd_index.swf", "expressinstall", "235", "111", "9", "#000");
   so.addParam("wmode","transparent");
   so.write("wd_index");
   </script>
   <a href="javascript:void(0);" class="n_downbtn common-3sdownload"></a>
   </div>
     <!-- 左侧列表开始 -->
      <div class="left_part">
            <div class="waybox" style="margin-top:115px">
                <div class="wayboxin">
                    <a href="/a/guide/index.html" target="_blank">新手引导</a>
                    <a href="http://pay.zqgame.com/" target="_blank">账号充值</a>
                    <a href="/Main/news/bulletin/bulletin16927.html" target="_blank">公会入驻</a>
                    <a href="/a/sw/index01.html" target="_blank">网吧加盟</a>
                </div>        
            </div>
        <div class="tuijian">
        	<div class="tuijianin common-xinfutuijian">
            </div>
        </div> 
        <div class="news_pic">
          <ul>
            <li><a href="/a/AnQuan/index.html" target="_blank"><img src="/images/news/news_07.jpg" width="220" height="100" /></a></li>
            <li><a href="/Main/news/actnews/actnews16292.html" target="_blank"><img src="/images/news/news_08.jpg" width="220" height="100" /></a></li>
            <li><a href="/a/sw/index01.html" target="_blank"><img src="/images/news/news_09.jpg" width="220" height="100" /></a></li>
          </ul>
        </div>
        <div class="service">
          <div class="service_title">一键客服</div>
          <div class="service_text">
            <ul>
              <li><a href="/a/AnQuan/index4.html" target="_blank">被盗物品找回</a></li>
              <li><a href="http://passport.zqgame.com/zqbwtxz/passport/transfore.do?menu=addpassinfo" target="_blank">防沉迷资料补填</a></li>
              <li><a href="http://company.zqgame.com/jzjh/index.html" target="_blank">家长监护系统</a></li>
              <li><a href="http://passport.zqgame.com/zqbwtxz/passport/transfore.do?menu=fangchenmi" target="_blank">帐号实名认证</a></li>
            </ul>
          </div>
          <div class="service_phone">
			客服电话：0755-26638699<br>
            客服邮箱：kefu@zqgame.com<br>
            企业QQ号：800009587<br>
            投诉邮箱：tousu@zqgame.com </div>
        </div>
      </div>
      <!----------右侧列表开始----------->
      <div class="right_part">
        <div class="activity_title">
          <div>当前位置：<a href="/IndexMain.html" >首页</a> > <span>活动中心</span></div>
        </div>
        
        <!--活动列表开始-->
        <div>
          <div class="news_bg">
            <div class="activity_list">
            <ul id="activityListId">
               <c:forEach items="${actList}" var="act">
                               <li><div class='activity_01'><div><img src="/${act.actPicpath}" width='194' height='88'></div>
                              <div class='activity_text'><span class='h1'>${act.actTitle}</span>
                                <p/>活动时间：${act.actTime}<br/>
                                <c:choose>
                                 <c:when test="${act.actState==1}">
                                                                                                  活动状态：<span class='highred'>进行中</span>
                                 </c:when>
                                 <c:otherwise>
                                                                                                 活动状态：<span class='highred'>已完成</span>
                                 </c:otherwise>
                                </c:choose>
                         </div><div class='btn_subject'>
                                  <a href="${act.actUrl}" target='_blank'> 
                                  <img src='/images/activity/activity_06.jpg' width='97' height='34' /></a>
                                  </div></div></li>
					    </c:forEach>
					    </ul>
            </div>
          </div>
          <div class="news_page paginator">
				<div id="AspNetPager1">
					
				</div>
          	</div>
        </div>
        <!--活动列表结束--> 
      </div>
      <!----------右侧结束-----------> 
    </div>
  </div>
</div>
<!--------页脚开始---------->
        <div class="footer_bg">
      <div class="footer">
      	<div class="logo"><img src="/images/logo_01.gif"  />
      	  <img src="/images/logo_02.gif"/></div>
        <div class="copyright">版权所有 &copy; 2012 深圳中青宝互动网络股份有限公司 上海巨人网络科技有限公司<br/>
        客服电话：0755-26638699<br/><span>中华人民共和国增值电信业务经营许可证：粤B2-20030216  粤ICP备：09057836<br/>网络文化经营许可证：文网文[2008]088号  中华人民共和国互联网出版许可证：新出网证(粤)字017号</span></div>
      </div>
      </div>
 <style type="text/css">
 .bw_qqSv{
 position:fixed !important; /*ie7 ff*/
 position:absolute;
 top:440px;
 right:0;
 z-index:99;
 }
 </style>
 <div class="bw_qqSv">
 <!-- WPA Button Begin -->
 <script type="text/javascript" src="http://static.b.qq.com/account/bizqq/js/wpa.js?type=8&kfuin=800009587&ws=www.zqgame.com&btn1=%E5%85%B5%E7%8E%8BQQ%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D&tx=1&aty=0&a="></script>
 <!-- WPA Button END -->
 </div>
<!--------页脚结束---------->
<script src=" http://stats.zqgame.com/ZQGwStats/Script/ad20120229.js?type=2" id="zqgameStats" type="text/javascript"></script> 
<!-----------脚本开始----------------> 
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F7854cc75e25e4fb7fb01836dc2fe51e0' type='text/javascript'%3E%3C/script%3E"));
// 最新广告代码主站内容 begin
var loaded_time=new Date().getTime();
var _bdhmProtocol = (("https:" == document.location.protocol) ? "https://" : "http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "tj.zqgame.com/js/ZA2.js' type='text/javascript'%3E%3C/script%3E"));
// 最新广告代码主站内容 end
</script>
</body>
</html>
