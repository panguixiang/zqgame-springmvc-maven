/**
 * 官网前台首页新闻，活动，图片列表展示控件
 */
var defaultVariable = {
	ajaxUrl:"url",
	type : "GET",
	actList : ".news_h1_con1c",//横向活动新闻
	mustnews : "#mustnewsId",//最新列表
	newsList : "#gameNewsId",//新闻列表
	bulletin : "#bulletinId", //公告列表 
	actNewsList : "#actnewsId",//活动竖向列表   
	mediaList :"#mediaId",//媒体列表 
	topNews: ".news_h1_con1t",//头条新闻
	carouselPic : "#carouselPicId",//首页轮播活动图片
	actPic4 : "#actPic4Id" //首页新闻下方4个横向图片
};	 
function indexNewsList(newsVariable){
	defaultVariable = jQuery.extend(true,defaultVariable, newsVariable);
	 ajaxPostMethod(defaultVariable);
}
var successIndexNewsListMethod = function(data,status,XMLHttpRequest){
	var createhtml="";
	returnData = jQuery.parseJSON(data);
	
	 //遍历横向活动 新闻
	if(returnData.topLinkList != null) {
		$(defaultVariable.actList).empty();
		jsonObj = eval(returnData.topLinkList);
		$(jsonObj).each(function(index) {
			var val = jsonObj[index];
			createhtml +="<SPAN><A href='" + val.linkUrl + "' target=_blank>"+ val.linkTitle + "</A></SPAN>"; 
		});
		$(defaultVariable.actList).html(createhtml);
	}
	//遍历最新列表
	if(returnData.mustnew != null) {
		$(defaultVariable.mustnews).empty();
		createhtml="";
		jsonObj = eval(returnData.mustnew); 
		$(jsonObj).each(function(index) {  
			var val = jsonObj[index];
			if(val.isHot==1) {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a><SPAN class=hot><IMG src='images/h1/hot.jpg' width=35 height=14></SPAN></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			} else {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			}  
			
		});
		$(defaultVariable.mustnews).html(createhtml);
	}
	//遍历新闻列表 
	if(returnData.gamenews != null) {
		$(defaultVariable.newsList).empty();
		createhtml="";
		jsonObj = eval(returnData.gamenews); 
		$(jsonObj).each(function(index) { 
			var val = jsonObj[index];
			if(val.isHot==1) {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a><SPAN class=hot><IMG src='images/h1/hot.jpg' width=35 height=14></SPAN></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			} else {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			}  
			
		});
		$(defaultVariable.newsList).html(createhtml); 
	}
	//遍历公告列表  
	if(returnData.bulletin != null) {
		createhtml="";
		$(defaultVariable.bulletin).empty();
		jsonObj = eval(returnData.bulletin); 
		$(jsonObj).each(function(index) { 
			var val = jsonObj[index];
			if(val.isHot==1) {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a><SPAN class=hot><IMG src='images/h1/hot.jpg' width=35 height=14></SPAN></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			} else {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			}  
			
		});
		$(defaultVariable.bulletin).html(createhtml); 
	}
	//遍历活动竖向列表   
	if(returnData.actnews != null) {
		$(defaultVariable.actNewsList).empty();
		createhtml="";
		jsonObj = eval(returnData.actnews); 
		$(jsonObj).each(function(index) { 
			var val = jsonObj[index];
			if(val.isHot==1) {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a><SPAN class=hot><IMG src='images/h1/hot.jpg' width=35 height=14></SPAN></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			} else {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			}  
			
		});
		$(defaultVariable.actNewsList).html(createhtml); 
	}
	//遍历媒体列表  
	if(returnData.media != null) {
		createhtml="";
		$(defaultVariable.mediaList).empty();
		jsonObj = eval(returnData.media); 
		$(jsonObj).each(function(index) {   
			var val = jsonObj[index];
			if(val.isHot==1) {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a><SPAN class=hot><IMG src='images/h1/hot.jpg' width=35 height=14></SPAN></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			} else {
				createhtml +="<TR><td><a href='/" + val.artPath + "' title='"+val.artTitle+"' target=_blank>【"+val.artTypeName+"】"+ val.artTitle + "</a></td><td class=date>["+dateFmt(val.createTime,'MM/dd')+"]</td></tr>"; 
			}  
			
		});
		$(defaultVariable.mediaList).html(createhtml);
	}
	//头条新闻
	if(returnData.topNews != null) {
		$(defaultVariable.topNews).empty();
		createhtml="";
		jsonObj = returnData.topNews; 
		if(null != jsonObj){	
			createhtml ="<a href='" + jsonObj.artPath + "'target=_blank>"+ jsonObj.artTitle + "</a>";
		}
		$(defaultVariable.topNews).html(createhtml);
	}
	
	//首页轮播活动图片
	if(returnData.carouselPicList != null) {
		createhtml="";
		$(defaultVariable.carouselPic).empty();
		createhtml="";
		jsonObj = eval(returnData.carouselPicList); 
		$(jsonObj).each(function(index) {    
			var val = jsonObj[index];
			createhtml +="<LI><A href='" +val.imageUrl + "' target=_blank> <IMG src='"+val.imagePath+"' width=271 height=302></A></LI>"; 	                      
		});	
		$(defaultVariable.carouselPic).html(createhtml);	
	}
	//4图片广告
	if(returnData.actPic4List != null) {
		createhtml="";
		$(defaultVariable.actPic4).empty();
		jsonObj = eval(returnData.actPic4List);
		$(jsonObj).each(function(index) {    
			var val = jsonObj[index];
			createhtml +="<A href='" + val.imageUrl + "' target=_blank> <IMG src='"+val.imagePath+"'></A>"; 	                      
		});
		$(defaultVariable.actPic4).html(createhtml);
	}
};

