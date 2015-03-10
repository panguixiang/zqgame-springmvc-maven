var defaultPagerVariable = {
		url:"/article/index/page",
		pagerDiv:"div",
        pageType:"no",
		page_size:1,//默认每页显示的行数
		currentPage:1,
		totalPages:1  
};
/**
 * ajax分页控件
 * pager 为page数据包含页码，页数，记录数等分页信息
 * newsPagerVariable 里需要有pagerUrl，pagerDiv：页码显示位置div
 * ,pagerUrl 分页请求url及page_size每页显示的行数
 */
var showPage = function(pager, newsPagerVariable) {
	var createhtml="";
	defaultPagerVariable = jQuery.extend(true,defaultPagerVariable, newsPagerVariable);
	$(defaultPagerVariable.pagerDiv).html("");
	var currentPage = pager.currentPage;
	var totalPage = pager.totalPages;
	if(totalPage==0){
		return;
	}
	var begin =0;
	var end = 0;
	var temp = totalPage- currentPage;
	var size =2;
	if(temp >size){
		end = currentPage+size;
	}else{
		end = totalPage;
	}
	temp = currentPage-size;
	if(temp<=0){
		begin=1;
	}else{
		begin=temp;
	}
	
	for(var h=0;end<totalPage; h++){
		if(end-begin<4){
			end= end+1;
		}else{
			break;
		}
	}
	for(var k=0;begin>1; k++){
		if(end-begin<4){
			begin =begin -1;
		}else{
			break;
		}
	}
	
	if(currentPage<=1){
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>首页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>上一页</A>";
	}else{
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage(1);>首页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage('"+(currentPage-1)+"');>上一页</A>";
	}
	for(var i=begin; i<=end; i++){
		if(i==currentPage){
			createhtml +="<SPAN style='COLOR: red; FONT-WEIGHT: bold; MARGIN-RIGHT: 5px'>"+currentPage+"</SPAN>";
		}else{						
			createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage('"+(i)+"');>"+(i)+"</A>";
		}
	}
	
	if(currentPage>=totalPage){
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>下一页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>尾页</A>";
	}else{
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage('"+(currentPage+1)+"');>下一页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage('"+(totalPage)+"');>尾页</A>";
	}
	
	$(defaultPagerVariable.pagerDiv).html(createhtml);
};	
var gotoPage = function(currentPage){
	defaultPagerVariable = jQuery.extend(true,defaultPagerVariable, {dataParameter:{page:currentPage}});
	ajaxPostMethod(defaultPagerVariable); //此处需要调用ajax.js(自己写的一个jquery的ajax异步请求插件区查询数据)
};

/**
 * 同步分页插件
 */
 var showPage2 = function(newDefaultPage) {
	 defaultPagerVariable = jQuery.extend(true,defaultPagerVariable, newDefaultPage);
	 $(defaultPagerVariable.pagerDiv).html("");
	var createhtml="";
	
	var currentPage = parseInt(defaultPagerVariable.currentPage);  
	var totalPage = parseInt(defaultPagerVariable.totalPages);  
	if(totalPage==0){
		return;
	}
	var begin =0;
	var end = 0;
	var temp = parseInt(totalPage-currentPage);
	var size =2;
	if(temp >size){
		end = currentPage+size;
	}else{
		end = totalPage;
	}
	temp = parseInt(currentPage-size);
	if(temp<=0){
		begin=1;
	}else{
		begin=temp;
	}
	
	for(var h=0;end<totalPage; h++){
		if(end-begin<4){
			end= end+1;
		}else{
			break;
		}
	}
	for(var k=0;begin>1; k++){
		if(end-begin<4){
			begin =begin -1;
		}else{
			break;
		}
	}
	if(currentPage<=1){
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>首页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>上一页</A>";
	}else{
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage2(1);>首页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage2('"+(currentPage-1)+"');>上一页</A>";
	}
	for(var i=begin; i<=end; i++){
		if(i==currentPage){
			createhtml +="<SPAN style='COLOR: red; FONT-WEIGHT: bold; MARGIN-RIGHT: 5px'>"+currentPage+"</SPAN>";
		}else{				
			createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage2('"+(i)+"');>"+(i)+"</A>";
		}
	}
	if(parseInt(currentPage)>=parseInt(totalPage)){
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>下一页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' disabled>尾页</A>";
	}else{
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage2('"+(currentPage+1)+"');>下一页</A>";
		createhtml +="<A style='MARGIN-RIGHT: 5px' href='#' onclick=gotoPage2('"+(totalPage)+"');>尾页</A>";
	}

    if(defaultPagerVariable.pageType=='go') {
            createhtml +="&nbsp;&nbsp;<input type='text' size='3' value='"+currentPage+"' id='gotocurrentPage' />"+
                    "<input type='button' id='goId' value='go' onclick='gotoPageGo()';/>";
          }
	
  $(defaultPagerVariable.pagerDiv).html(createhtml);
 };
  function gotoPage2(currentPage) {
	  var parameter = defaultPagerVariable.pageParameter;
	  $(defaultPagerVariable.pagerDiv).html("");
	  if(parameter != "") {
		  location.href=defaultPagerVariable.url+"?page="+currentPage+"&page_size="+defaultPagerVariable.page_size+"&"+parameter;  
	  } else {
	   location.href=defaultPagerVariable.url+"?page="+currentPage+"&page_size="+defaultPagerVariable.page_size; 
	  }
  }

 /**
  * 输入页数分页
  */
  function gotoPageGo() {
     var parameter = defaultPagerVariable.pageParameter;
     var nowGoPage = $("#gotocurrentPage").val();
     $(defaultPagerVariable.pagerDiv).html("");
     if(parameter != "") {
         location.href=defaultPagerVariable.url+"?page="+nowGoPage+"&page_size="+defaultPagerVariable.page_size+"&"+parameter;  
                        } else {
         location.href=defaultPagerVariable.url+"?page="+nowGoPage+"&page_size="+defaultPagerVariable.page_size; 
                                 }
           }
