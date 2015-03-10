package com.zqgame.common;

import java.util.ResourceBundle;

/**
*
* 创建人：baojun
* 创建时间: 2013-1-11
* 功能描述:定义常量
* 版本：1.0
* 版权拥有：深圳中青宝互动网络股份有限公司
* 
* =====================================================
*             修改记录
* =====================================================
* 序号   姓名     日期     版本          简单描述
* =====================================================
*
*/
public class Constant {

    public static final String SUCCESS;//返回结果 success：正确 
	public static final String FAILURE;//返回结果  faile：失败
	public static final String ENCODE_UTF_8;//返回类型
	public static final String MANAGER_SESSION;
	public static final String CAPTCHA;//图片验证码session
   
    /**下载相关常量信息*/
	public static final String CLIENT_DOWNLOAD;//客户端下载
	public static final String SMALLEND_DOWNLOAD;//微端下载
	public static final String PATCH_DOWNLOAD;//补丁下载
	public static final String CLIENT_MEDIA;//客户端媒体分流
	public static final String SMALLEND_MEDIA;//微端媒体分流
	
	/**首页相关常量信息*/
	public static final String HOME_CAROUSEL_PIC;//获取首页轮播图片
	public static final String HOME_ACT_PIC4;//首页4图广告
	public static final String HOME_TOP_LINK;//首页顶部连接
	public static final String HOME_GAMENEWS;//首页新闻
	public static final String HOME_BULLETIN;//首页公告
	public static final String HOME_ACTNEWS;//首页活动
	public static final String HOME_MEDIA;//首页媒体
	
	/**客户端相关常量信息*/
	public static final String CLIENT_INDEX_PAGE;//index页面图片
	public static final String CLIENT_FOCUS_PAGE;//focus页面图片
	public static final String CLIENT_FOCUS2_PAGE;//focus2页面图片
	public static final String CLIENT_FWQ_PAGE;//fwq页面图片
	public static final String NEWS_CLIENT;//最新版本完整客户端下载
	/**图片相关常量信息*/
	public static final String PIC_TYPE_PHOTO;//玩家写真
	public static final String PIC_TYPE_GOODSNAP;//游戏截图
	public static final String PIC_TYPE_DRAW;//游戏原画
	public static final String PIC_TYPE_WALLPIC;//游戏壁纸
	public static final String PIC_TYPE_PICGAME;//漫画长廊
	public static final String PIC_TYPE_GAMEVIDEO;//游戏视频
	public static final String PICTURE_PATH; //前台上传文件（图片）存储的路径
	public static final String THUMBNAIL_WEIGHT;
	public static final String THUMBNAIL_HEIGHT;
	public static final String QUICK_REGISTER;
	public static final String DESC_KEY;
	public static final String VERSION_API;
	public static final String APIKEY;
	public static final String PLANTFORMID;
	public static final String EXIST_USERNAME;
	public static final String ACCOUNTYPE;
	
	public static final String SQLFILE;
	public static final String GAMEWEB;
	
	public static final String GAMELOGINURL;
	public static final String LOGINACCOUNTYPE;
	static{
        ResourceBundle rb = ResourceBundle.getBundle("constant");
        SUCCESS = rb.getString("SUCCESS");
        FAILURE = rb.getString("FAILURE");
        ENCODE_UTF_8 = rb.getString("ENCODE_UTF_8");
        MANAGER_SESSION = rb.getString("MANAGER_SESSION");
        CAPTCHA = rb.getString("CAPTCHA");
        
        CLIENT_DOWNLOAD = rb.getString("CLIENT_DOWNLOAD");
        SMALLEND_DOWNLOAD = rb.getString("SMALLEND_DOWNLOAD");
        PATCH_DOWNLOAD = rb.getString("PATCH_DOWNLOAD");
        CLIENT_MEDIA = rb.getString("CLIENT_MEDIA");
        SMALLEND_MEDIA = rb.getString("SMALLEND_MEDIA");
        
        HOME_CAROUSEL_PIC = rb.getString("HOME_CAROUSEL_PIC");
        HOME_ACT_PIC4 = rb.getString("HOME_ACT_PIC4");
        HOME_TOP_LINK = rb.getString("HOME_TOP_LINK");
        HOME_GAMENEWS = rb.getString("HOME_GAMENEWS");
        HOME_BULLETIN = rb.getString("HOME_BULLETIN");
        HOME_ACTNEWS = rb.getString("HOME_ACTNEWS");
        HOME_MEDIA = rb.getString("HOME_MEDIA");
        
        CLIENT_INDEX_PAGE = rb.getString("CLIENT_INDEX_PAGE");
        CLIENT_FOCUS_PAGE = rb.getString("CLIENT_FOCUS_PAGE");
        CLIENT_FOCUS2_PAGE = rb.getString("CLIENT_FOCUS2_PAGE");
        CLIENT_FWQ_PAGE = rb.getString("CLIENT_FWQ_PAGE");
        
        PIC_TYPE_PHOTO = rb.getString("PIC_TYPE_PHOTO");
        PIC_TYPE_GOODSNAP = rb.getString("PIC_TYPE_GOODSNAP");
        PIC_TYPE_DRAW = rb.getString("PIC_TYPE_DRAW");
        PIC_TYPE_WALLPIC = rb.getString("PIC_TYPE_WALLPIC");
        PIC_TYPE_PICGAME = rb.getString("PIC_TYPE_PICGAME");
        PIC_TYPE_GAMEVIDEO = rb.getString("PIC_TYPE_GAMEVIDEO");
        PICTURE_PATH = rb.getString("PICTURE_PATH");
        THUMBNAIL_WEIGHT = rb.getString("THUMBNAIL_WEIGHT");
        THUMBNAIL_HEIGHT = rb.getString("THUMBNAIL_HEIGHT");
        DESC_KEY = rb.getString("DESC_KEY");
        VERSION_API = rb.getString("VERSION_API");
        APIKEY = rb.getString("APIKEY");
        PLANTFORMID = rb.getString("PLANTFORMID");
        QUICK_REGISTER = rb.getString("QUICK_REGISTER");
        EXIST_USERNAME = rb.getString("EXIST_USERNAME");
        ACCOUNTYPE = rb.getString("ACCOUNTYPE");
        NEWS_CLIENT = rb.getString("NEWS_CLIENT");
        SQLFILE = rb.getString("SQLFILE");
        GAMEWEB = rb.getString("GAMEWEB");
        
        GAMELOGINURL = rb.getString("GAMELOGINURL");
        LOGINACCOUNTYPE = rb.getString("LOGINACCOUNTYPE");
    }
	
}
