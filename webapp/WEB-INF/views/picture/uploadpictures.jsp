<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<HEAD>
<TITLE>兵王艺术馆 - 《兵王》官方网站</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<script src="http://static.zqgame.com/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="http://static.zqgame.com/js/ajaxfileupload.js" type="text/javascript"></script>
<style type="text/css">
 body{padding:0px; font-size:12px; margin:0px auto; text-align:center; background-color:#f7f0d4;}
.bw_box02{
	background:#fff8de;
	border:1px solid #898162;
	width:550px;
	height:360px;
	position:absolute;
	}
.bw_boxcn{
	background:#f7eed6;
	padding:8px;
	text-align:left;
	}
.bw_box02 table{
	width:450px;
	margin:0 auto;
	text-align:left;
	margin-top:60px;
	}
.bw_box02 td{
	padding:3px 5px;
	}
.textInput01{
	height:22px;
	line-height:22px;
	width:280px;
	background:#fff;
	border:1px solid #bcb8ab;
	}
.textInput02{
	width:150px;
	}
</style>
<script type="text/javascript">
	function uploadImage(fileId) {
		var file = $("#"+fileId).val();
		var txtpicTitle = $("#txtpicTitle").val();
		var txtgameRole = $("#txtgameRole").val();
		
		if (file == "") {
			alert("请选择文件!"); 
			return;
		}
		if(!/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(file)) {
			alert("图片类型必须是.gif,jpg,png,jpeg中的一种");
			return;
		}
		if (txtpicTitle == "") {
			alert("请输入图片标题!"); 
			return;
		}
		if (txtgameRole == "") {
			alert("请输入角色名!"); 
			return;
		}
		
		var image = new Image();
		image.src = file;
		var filesize = image.fileSize;
		if(filesize>102400){
			alert("请上传大小小于100k的图片！");
			return;
		}
		$.ajaxFileUpload({
			url:'http://d.bw.zqgame.com/article/addpictrue',//用于文件上传的服务器端请求地址
			secureuri:false,//一般设置为false
			fileElementId:fileId,//文件上传空间的id属性  <input type="file" id="file" name="file" /> 
			dataType: 'text',//返回值类型 一般设置为json
			data: {'picInfo':txtpicTitle,'gameRoleName':txtgameRole},//扩展参数
			success: function (data, status){  //服务器成功响应处理函数
				alert("您的图片已上传，请等候审核通过！");
				closeWin();
			},
			error: function(XMLHttpRequest, textStatus) {
			    alert(XMLHttpRequest.status);
			    alert(textStatus);
			}
		});
		return false;
	}


    function closeWin() {
      document.domain="zqgame.com";
      window.parent.common.closeWin();
    }
</script>
</head>
<body>

<div class="aspNetHidden">
</div>
<div class="aspNetHidden">
</div>  
<div class="bw_box02">
	<table>
    	<tbody><tr>
        	<td align="right">图片标题</td>
        	<td><input type="text" maxlength="20" class="textInput01" id="txtpicTitle" name="txtpicTitle"></td>
        </tr>
    	<tr>
        	<td align="right">角色名</td>
        	<td><input type="text" maxlength="20" class="textInput01 textInput02" id="txtgameRole" name="txtgameRole"></td>
        </tr>
    	<tr>
        	<td align="right">文件上传</td>
        	<td><input type="file" class="textInput01" id="picfile" name="picfile"></td>
        </tr>
    	<tr>
        	<td align="center" colspan="2">
        	<input type="image" src="http://bw.zqgame.com/images/update_but.gif" id="ImgUpload" name="ImgUpload" onclick="uploadImage('picfile');" />&nbsp;&nbsp;&nbsp;&nbsp;
        	<a href="#" onclick="closeWin();"><img src="http://bw.zqgame.com/images/update_end.gif"></a></td>
        </tr>
    </tbody></table>
	<div class="bw_boxcn">
    	<p>图片上传说明：</p>
        <p>1.请勿填写或上传涉及色情、反动以及政治相关内容。</p> 
        <p>2.上传的照片图片请勿带其他网址的地址和产品LOGO。</p>
        <p>3.上传图片需小于300K。 </p>
        <p>4.图片提交成功，官网审核通过后，才会显示在相应栏目内，请勿多次上传。 </p>
    </div>
</div>


</body></html>
