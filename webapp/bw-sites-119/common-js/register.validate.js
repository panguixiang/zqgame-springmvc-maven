/*
 * 注册表单验证 插件
 * formId 表单id
 * @param formId
 */
/**
 * error ajax
 */
var defaultAjaxErrorMethod = function(data) {
	alert(data.msg);
	getValidateServlets();
};
/*zs*/
var defaultAjaxErrorMethod3 = function(data) {
  $("#textInfo").css("color","red").text(data.msg);
   getValidateServlets();
};
/**
 * 默认提交后ajax 200状态回调 success ajax
 */
var defaultAjaxCalbackMethod = function(data) {
        $("#sbprompt").css("display","none");
        $("#regFrame").css("display","none");
        $("#reg_cheg").css("display","inline-block");
		$("#reg_name").text("用户名是:" +data.userName);
getValidateServlets();
};
var defaultAjaxCalbackMethod3 = function(data) {
  alert("恭喜您！注册成功！");
  $("#txtSuccPassName").text("您的用户名是: "+data.userName);
   if (top.window) {
         top.hide('reg');
     top.show('reg_ok');
   }
getValidateServlets();
};
/*kz zs*/ 
var valiErrorMethod3 = function(error,element){
    $("#errorShowId").empty();
        error.appendTo($("#errorShowId"));
        var msg = $("#errorShowId").text();
        if(msg.length!=0) {
           $("#textInfo").css("color","red").text(msg);
        } else {
          $("#textInfo").text("");
       }
};
/**
 * 默认 提交前错误回调
 */
var valiErrorMethod1 = function(error,element){
    $("#errorShowId").empty();
        error.appendTo($("#errorShowId"));
        var msg = $("#errorShowId").text();
        var ele = $(element);
        var s = ele.val();
        if(msg.length!=0) {
         if(ele.attr("type") != "checkbox") {
           ele.parent().next().empty();
            if(ele.attr("name")!='captcha') {
              ele.parent().next().html("<img src='images/login_error.jpg' id='checkname' />");
             }
           ele.next().css("display","inline-block");
           ele.css("display","none");
           ele.next().val(msg);
           ele.next().bind("focus",fuc2=function(){
           ele.css("display","block");
           ele.next().css("display","none");
           ele.val(s);
           ele.next().unbind("focus",fuc2);
           ele.next().val("");
           ele.focus();
             });
           }  else {
            alert(msg);
              }
        } else {
          if(ele.attr("type") != "checkbox" ) {
            var le = (ele.attr("class")).indexOf("focuclass");
            if(le<0 && ele.val().length>0 && ele.attr("name")!='captcha') {
              ele.parent().next().empty();
              if(ele.attr("name")!='captcha'){
               ele.parent().next().html("<img src='images/login_Correct.gif' id='checkname' />");
               }
             }
           }
       }
};
/**
 * 默认提交前 单个元素验证通过回调函数
 */
var defaultValiSucceMethod = function(label) {
};


var defaultValiErrorMethod = function(error,element){
  $("#errorShowId").empty();
  error.appendTo($("#errorShowId"));
  var msg = $("#errorShowId").text();
  var ele = $(element);
  var s = ele.val();
  if(msg.length!=0) {
     $("#sbprompt").css("display","inline-block");
      if(ele.attr("type") != "checkbox") {
        ele.next().css("display","inline-block");
        ele.css("display","none");
        ele.next().val(msg);
        ele.next().bind("focus",fuc2=function(){
         ele.css("display","block");
             ele.next().css("display","none");
             ele.val(s);
             ele.next().unbind("focus",fuc2);
             ele.next().val("");
             ele.focus();
      });
     }  else {
        alert(msg);
   }
  }
};


var valiErrorMethod2 = function(error,element){
 $("#errorShowId").empty();
 error.appendTo($("#errorShowId"));
 var msg = $("#errorShowId").text();
 $(element).parent().next().empty();
 var ele = $(element);
 if(msg.length!=0) {
   if(ele.attr("type") != "checkbox") {
    if(ele.attr("name")!='captcha') {
      ele.parent().next().html("<img src='images/register/register_failure.jpg' />");
    }
     ele.css("display","none");
     ele.next().css("display","inline-block");
     ele.next().val(msg);
     ele.next().unbind();
     ele.next().bind("focus",clic = function(){
        $(this).css("display","none");
        $(this).prev().css("display","inline-block");
        $(this).val("");
        $(this).prev().focus();
         });
     } else {
        alert(msg);
     }
   } else {
     if(ele.attr("type") != "checkbox" ) {
      var le = (ele.attr("class")).indexOf("focuclass");
        if(le<0 && ele.val().length>0) {
          if(ele.attr("name")!='captcha'){
           ele.parent().next().html("<img src='images/register/register_success.jpg' />");
               }
             }
           }
          }
 };

var ajaxCalbackMethod1 = function(data) {
  alert("恭喜您注册成功！您的用户名是:"+data.userName);
  $("input").val("");
getValidateServlets();
};

var ajaxCalbackMethod2 = function(data) {
  location.href="/bwTips.shtml?"+data.userName;
};


/* td */
var valiErrorMethod4 = function(error,element) {
  $("#errorShowId").empty();
  error.appendTo($("#errorShowId"));
  var msg = $("#errorShowId").text();
  var ele = $(element);
  if(msg.length!=0) {
    if(ele.attr("type") == "checkbox") {
      alert(msg);
    }
    if(ele.attr("name")=="captcha") {
      ele.next().next().next().css("color","red").text(msg);
    } else {
      ele.next().next().css("color","red").text(msg);
      }
  } else {
      if(ele.attr("name")=="captcha") {
          ele.next().next().next().text("");
      } else {
          ele.next().next().text("");
       }
     }
};
/* td */
var defaultAjaxCalbackMethod4 = function(data) {
    alert("恭喜您！注册成功！");
    $("input").val("");
    $("#checkboxId").attr("checked", true);
    getValidateServlets();
    $("#textInfo").html("恭喜您！注册成功！"+"<a href='http://passport.zqgame.com' target='_blank'>登录通行证</a>")
};

/* war2 */
var defaultAjaxCalbackMethod5 = function(data) {
  alert("恭喜您！注册成功！");
  getValidateServlets();
  $(validationData.hideDiv).hide();
}
/**-------------一些提示特效方法   end------------------*/
/**
 * 定义一些插件中需要用到的默认常量,这些东西都可以被覆盖，更可以添加新的进来（直接在引用页面里加就可以了）
 */
var validationData = {
	regFormId : "#registgerFormId",	//默认注册表单ID
	ajaxUrl : "http://d.bw.zqgame.com/register/quick",
	userNameRemote : "http://d.bw.zqgame.com/register/checkname", // 异步请求校验重复性路径
	passwordId : "#passwordId",// 密码输入框Id 检测两次输入密码是否一致
	userName : "input[name='username']", // 选择通行证注册与选择邮箱注册时切换输入框内容
	autchImageId : "imagedid",
	authImageUrl:"http://d.bw.zqgame.com/register/captcha-image?",
	submitObj:".submitclass",//定义提交按钮为图片或其他非input按钮时候用到的
	ajaxErrorMethod : defaultAjaxErrorMethod,
	ajaxCalbackMethod : defaultAjaxCalbackMethod,  
	valiErrorMethod : defaultValiErrorMethod,
	valiSucceMethod: defaultValiSucceMethod, 
  defaultGame: "_bw",
	usernameRequiredMsg: "没有填写用户名",
	usernameRegexusernameMsg: "只能输入字符串和数字",
	usernameMinlengthMsg:"用户名不能小于{0}个字符",  
	usernameRemoteMsg:"用户名已经被注册",
	passwordRequiredMsg:"没有填写密码",
	passwordMinlengthMsg:"密码最少{0}个字符",
	password_confirmationRequiredMsg:"没有确认密码",
	password_confirmationEqualToMsg:"两次输入密码不一致嘛",
	captchaEqualToMsg:"必填",
	captchaMaxlengthMsg:"验证码最多{0}个字符",
	licenseRequiredMsg:"是否同意服务条款",
	rightEmailMsg:"请输入正确格式邮箱",
	emailRequiredMsg:"请输入邮箱地址",
	notEqualNameAndPaswd: "用户名和密码不能相同!",
  realNameRequiredMsg: "不能为空",
  realNameIsRealNameMsg: "输入中文姓名",
  cardRequiredMsg: "不能为空",
  carIsCardMsg: "身份证号码非法",
	userNameMinLength:6,
	passMinLength:6,
	captMaxLength:4
};
//$(function(){
//    if(!$.browser.msie){
//        var dynamicDomain = "http://d.bw.zqgame.com";
//        validationData.ajaxUrl = dynamicDomain + validationData.ajaxUrl;
//        validationData.userNameRemote = dynamicDomain + validationData.userNameRemote;
//        validationData.authImageUrl = dynamicDomain + validationData.authImageUrl;
//    }   
//})
var checkUserNameRemoteMethod = {
     url: validationData.userNameRemote,     //后台处理程序
     type: "get",               //数据发送方式
     dataType: "jsonp",           //接受数据格式
     username: function(){
          return $(regFormId+" "+userName).val();
                         },
    error:function(xhr, status){
          alert("服务器忙，请重试!");
                 }
        };
/* * 获得推广来源 部分 begin
  */
  function getCookie(name) {
     var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
        if (arr != null) return decodeURI(arr[2]);
        return "";
        }
  function SetCookie(name, value)//两个参数，一个是cookie的名子，一个是值
  {
    var Days = 30; //此 cookie 将被保存 30小时
    var exp = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";domain=.zqgame.com";
  }
  var ad='';//广告来源
  var purl = '';//来源url
  var pimgid = '';//来源图片
  function getUrlPara() {
    purl = document.referrer;
    if (purl == null || purl == '') {
        purl = 'rw';
         }
    var firstz = purl.indexOf('://');
    if (firstz > -1) {
         purl = purl.substring(firstz + 3, purl.length - 1);
     }
    var endz = purl.indexOf('/');
    if (endz > -1) {
        purl = purl.substring(0, endz);
     }
    purl = purl + validationData.defaultGame;
    SetCookie("urlf", purl);
    if (window.location.search.indexOf("?") >= 0) {
        var paras = window.location.search.substr(1).split("&");
    for (var i = 0; i < paras.length; ++i) {
        paras[i] = paras[i].toLowerCase();
        if (paras[i].indexOf("ad=") == 0) {
        ad = paras[i];
        if (ad.substr(3) != null && ad.substr(3) != "") {
        SetCookie("ad", ad.substr(3));
        }
       }
  //add daly 2010.6.7 
    if (paras[i].indexOf("imgid=") == 0) {
       pimgid = paras[i].toLowerCase().substr(6);
       }
     }
  }
  //add daly 2010.6.1 
   if (ad == "" || ad == null) {
     ad = "ad=" + getCookie("ad");
   }
  }
  /**
  * 获得推广来源 部分 end
  */


/**
 * 引用页面需要调用的方法
 * null 为一些需要用到的常量，这里 写法为{a:'value',b:'value'}
 */
var validatorRegisterForm = function(newValidationData) {
	$("body").after("<span id='errorShowId' style='display:none;'></span>");
	/**
	 * 初始化常量，若newValidationData不为空，则会合并validationData
	 */
	validationData = jQuery.extend(true,validationData, newValidationData);
	getUrlPara();
  checkUserNameRemoteMethod.url = validationData.userNameRemote;
	/**
	 * 定义默认的ajax请求参数
	 */
	var ajaxOptions = {
        async:false,
		url : validationData.ajaxUrl,
		type : "get",
		dataType : "jsonp",
       // crossDomain: true,
		success : function(data,status,XMLHttpRequest) { // 注册请求回调处理方法
			if(data.status == "success") {
                validationData.ajaxCalbackMethod(data);
            }else {
             validationData.ajaxErrorMethod(data);
            }
		},
		error: function(data, textStatus, errorThrown) {
			validationData.ajaxErrorMethod(data, textStatus, errorThrown);
           }
	};

	/**
	 * 更改validator默认的form提交方式为异步ajax并执行提交操作
	 */
	$.validator.setDefaults({
		submitHandler : function(form) {
			var param = $(validationData.regFormId).serialize();
		    param +="&szSrc="+purl+"&"+ad+"&spreadImageId="+pimgid;
            ajaxOptions = jQuery.extend(ajaxOptions, {
				data : param
			});
			$.ajax(ajaxOptions);
		}
	});
	
	
	/**
	 * 注意opts的定义必须要放在下面这句之前，不然的话，外面传递进来的自定义消息都没用了
	 */
$(validationData.regFormId).validate({
    	onkeyup : false,
		rules : {
			username : {               
				required : true,
				notChina : true,
				minlength : validationData.userNameMinLength,
				remote:checkUserNameRemoteMethod
			},
			password : {
				required : true,
				minlength : validationData.passMinLength,
                notEqualTo:validationData.userName
			},
			password_confirmation : {
				required : true,
				equalTo : validationData.passwordId
			},
      realName : {
        required : true,
        isRealName : true
      },
      card : {
        required : true,
        isIdcardno : true
      },
			captcha : {
				required : true,
				maxlength : validationData.CaptMaxLength
			},
			license : {
				required : true
			}
		},
		messages : {
			username : {
				required : validationData.usernameRequiredMsg,
				notChina : validationData.usernameRegexusernameMsg,
				minlength : jQuery.format(validationData.usernameMinlengthMsg), 
				remote: validationData.usernameRemoteMsg
			},
			password : {
				required : validationData.passwordRequiredMsg,
				minlength : jQuery.format(validationData.passwordMinlengthMsg)
			},
			password_confirmation : {
				required : validationData.password_confirmationRequiredMsg,
				equalTo : validationData.password_confirmationEqualToMsg
			},
      realName : {
        required : validationData.realNameRequiredMsg,
        isRealName : validationData.realNameIsRealNameMsg
      },
      card : {
        required : validationData.cardRequiredMsg,
        isIdcardno : validationData.carIsCardMsg
      },
			captcha : {
				required : validationData.captchaEqualToMsg,
				maxlength : jQuery.format(validationData.captchaMaxlengthMsg)
			},
			license : {
				required : validationData.licenseRequiredMsg
			}
		},  
		errorPlacement: validationData.valiErrorMethod,
		success: validationData.valiSucceMethod
    });
	
	/**
	 * 图片做submit提交
	 */
	$(validationData.submitObj).click(function() {
		$(validationData.regFormId).submit();
	});
        $(validationData.regFormId).submit();
};


/**
 * 默认的选择普通注册还是邮箱注册
 * 这里规定registerType=1 为普通注册，为2为邮箱注册 可以被替换或重写
 * **/
var selectRegisterType = function(registerType) {
	   /*
     * 选择注册方式（通行证注册，邮箱注册）
     */
	$(validationData.userName).val("");
	$(validationData.userName).next().val("");
	
	
    	if (registerType == 1) { // 通行证注册
    		$(validationData.userName).rules("add", {notChina: true,messages:{notChina:validationData.usernameRegexusernameMsg}});
    		$(validationData.userName).rules("remove","email");
    		$(validationData.userName).next().val(validationData.usernameRequiredMsg);
    	} else { // 邮箱注册
    		$(validationData.userName).rules("add", {email: true,messages:{email:validationData.rightEmailMsg}});//"请输入正确格式邮箱"
    		$(validationData.userName).rules("remove","notChina");
    	    $(validationData.userName).next().val(validationData.emailRequiredMsg); //请输入邮箱地址
    	}
    	/**
    	 * 因为每个校验规则都是有顺序，所以这里必须在上面添加完成email或regexusername规则后，再重新添加一次异步验证重复性规则
    	 * 不然会先去验证重复性
    	 */
    	$(validationData.userName).rules("remove","remote");
    	$(validationData.userName).rules("add", {remote: checkUserNameRemoteMethod,
    	messages:{remote:validationData.usernameRemoteMsg}});
    	
    	$(validationData.userName).next().css("display", "block");
    	$(validationData.userName).css("display", "none");
    	$(validationData.userName).next().bind("focus", function() {
 	    	$(this).css("display", "none");
 	    	$(this).prev().css("display", "block");
 	    	$(this).prev().focus();
 	    });
};

/*
*一个input输入框
*/
var selectRegisterType2 = function(registerType) {
     /*
     * 选择注册方式（通行证注册，邮箱注册）
     */
  $(validationData.userName).val("");

      if (registerType == 1) { // 通行证注册
        $(validationData.userName).rules("add", {notChina: true,messages:{notChina:validationData.usernameRegexusernameMsg}});
        $(validationData.userName).rules("remove","email");
      } else { // 邮箱注册
        $(validationData.userName).rules("add", {email: true,messages:{email:validationData.rightEmailMsg}});//"请输入正确格式邮箱"
        $(validationData.userName).rules("remove","notChina");
      }
      /**
       * 因为每个校验规则都是有顺序，所以这里必须在上面添加完成email或regexusername规则后，再重新添加一次异步验证重复性规则
       * 不然会先去验证重复性
       */
      $(validationData.userName).rules("remove","remote");
      $(validationData.userName).rules("add", {remote: checkUserNameRemoteMethod,
      messages:{remote:validationData.usernameRemoteMsg}});
};


/**
 * 自定义一些正则表达式校验规则 这个是登录名通行证注册时，过滤中文的
 */
jQuery.validator.addMethod("notChina", function(value, element){
	var notChinaReg = /^([a-zA-Z0-9]+)$/;
	return this.optional(element) || (notChinaReg.test(value));}, validationData.usernameRegexusernameMsg);

jQuery.validator.addMethod("notEqualTo", function(value, element, param) {
  return value != $(param).val();
}, $.validator.format(validationData.notEqualNameAndPaswd));

/**
 * 身份证号码验证   
 */
jQuery.validator.addMethod("isIdcardno", function(value, element) {
  return this.optional(element) || checkIdcard(value);   
}, validationData.carIsCardMsg);

/**
 * 真实姓名   
 */
jQuery.validator.addMethod("isRealName", function(value, element){
  var realNameReg = /^[\u4E00-\u9FA5\uFE30-\uFFA0]+$/g;
  return this.optional(element) || (realNameReg.test(value));}, validationData.realNameIsRealNameMsg);

/*
 * 更换验证码
 */
var getValidateServlets = function() {
	document.getElementById(validationData.autchImageId).src = validationData.authImageUrl
			+ Math.random();
};
var changCurso = function() {
	document.getElementById(validationData.autchImageId).style.cursor = "pointer";
};

//td add begin
var checkIdcard = function(idcard){
    idcard = idcard.toUpperCase();
    var Errors=new Array("","身份证号码位数不对","身份证号码出生日期超出范围或含有非法字符","身份证号码校验错误","身份证地区非法","身份证号码不受支持,请输入18位身份证号码或升级你的身份证号码");
    var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"};
    var idcard,Y,JYM;
    var S,M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
    if (area[parseInt(idcard.substr(0,2))]==null) 
      return false;
    switch(idcard.length){
    case 15:
      return false;
      break;
    case 18:
      if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 ))
      {
        ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//闰年出生日期的合法性正则表达式
      }
      else
      {
        ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//平年出生日期的合法性正则表达式
      }
      if(ereg.test(idcard))
      {
        S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9 + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10 + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8 + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4 + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 + parseInt(idcard_array[7]) * 1 + parseInt(idcard_array[8]) * 6 + parseInt(idcard_array[9]) * 3 ;
        Y = S % 11;
        M = "F";
        JYM = "10X98765432";
        M = JYM.substr(Y,1);
        if(M == idcard_array[17])
          return true;
        else
          return false;
      }
      else
        return false;
      break;
    default:
      return false;
      break;
    }
};
