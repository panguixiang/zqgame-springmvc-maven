package com.zqgame.util;


import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.log4j.Logger;

public class HttpClientUtil {
	private static Logger LOG = Logger.getLogger(HttpClientUtil.class);
	/**
     * 
     * 得到Http请求结果
     * 
     * @param url请求地址
     * @param parms请求参数
     * @return
     */
    public static String getBody(String url) {
    	
        String resultstr = null;
        // 构造HttpClient的实例
        HttpClient httpClient = new HttpClient();
        // 创建POST方法的 实例
        PostMethod postMethod = new PostMethod(url);
        try {
            // 执行postMethod
            int statusCode = httpClient.executeMethod(postMethod);// httpclient对于要求接受后继服务的请求，等待返回
            // 象post和put等不能自动处理转发
            if (statusCode == HttpStatus.SC_MOVED_PERMANENTLY
                    || statusCode == HttpStatus.SC_MOVED_TEMPORARILY) {
                Header locationHeader = postMethod
                        .getResponseHeader("location");
                String location = null;
                if (locationHeader != null) {
                    location = locationHeader.getValue();
                    System.out.println("The page was redirected to:" + location);
                } else {
                    System.out.println("Location field value is null");
                }
            }
            resultstr = new String(postMethod.getResponseBodyAsString()
                    .getBytes(), "UTF-8");
        } catch (Exception e) {
        	LOG.error(LogUtil.getLogStr("register-发送HttpClient请求异常", e.getMessage()));
        } finally {
            postMethod.releaseConnection();
        }
        return resultstr;
    }
    
    /*public static void main(String args[]) {
    	String url = "http://zbx.zqgame.com/qreg/commonreg/ApiRegs.aspx?checkcode=9ueg&passname=yangtest20ewe0021&passwd=e10adc3949ba59abbe56e057f20f883e&realname=&idcard=&ad=031yywrzt001&urlf=rw_zbx&tgcode=undefined&imgid=";
    	System.out.println(getBody(url));
    }*/
}
