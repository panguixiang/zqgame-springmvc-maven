/**--jquery ajax 异步请求处理插件--**/

/**
 * 定义默认变量，常量 
 * ajaxUrl 请求的action路径,pagerUrl是分页控件本身要访问的url，可以与ajaxUrl相同
 * dataParameter 需要传递的参数，这里是个默认的
 */
var defaultVariable = {
		ajaxUrl : "url", 
		dataParameter : {"t": Math.random()},
		type : "POST",
		succesMethod : defaultSuccessMethod, //默认200回调方法名称
		errorMethod : defaultErrorMethod //默认非200回调方法名称
};

/**
 * 执行异步post ajax请求方法
 * newsVariable 新的变量或常量
 * successMethod 回调函数  返回200时  处理业务的方法名称
 * errorMethod   错误回调函数  处理业务的方法名称
 */
var ajaxPostMethod = function(newsVariable) {
	defaultVariable = jQuery.extend(true,defaultVariable, newsVariable);
	 $.ajax({
         url: defaultVariable.ajaxUrl,
         type: defaultVariable.type,
         async: false,
         data: defaultVariable.dataParameter,
         dataType: 'text',
         success: function (data,status,XMLHttpRequest) {
        	 defaultVariable.succesMethod(data,status,XMLHttpRequest);
         },
         error: function(XMLHttpRequest, textStatus, errorThrown) {
        	 defaultVariable.errorMethod(XMLHttpRequest, textStatus, errorThrown);
         }
     }); 
};

var returnData;
/**
 * 默认的200回调函数（可重写和继承）
 */
var defaultSuccessMethod = function(data,status,XMLHttpRequest) {
	 alert(XMLHttpRequest.status);
     return false;
};

/**
 * 默认的错误回调函数 （可重写和继承） 大部分错误处理都可以直接用它
 * 406 为自定义错误 状态码 通常会携带个自定义的描述字符串msg
 * 比方说，异步请求后台判断了某个参数为空，若为空则返回
 * 那么就可以将状态吗标注为406，然后弄个msg的key，value
 */
var defaultErrorMethod = function(XMLHttpRequest, textStatus, errorThrown) {
	if(XMLHttpRequest.status != 406) {
		alert(XMLHttpRequest.status);
	} else {
		returnData = jQuery.parseJSON(XMLHttpRequest.responseText);
        alert(returnData.msg);
	}
	return false;
};