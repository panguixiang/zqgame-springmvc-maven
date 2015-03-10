package com.zqgame.util;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

/**
*
* 创建人：baojun
* 创建时间: 2013-1-10
* 功能描述:读写xml文件操作
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
public class XmlOperateUtil {
	
	public static Document load(String filename) {
		Document document = null; 
	    try { 
	    	DocumentBuilderFactory   factory = DocumentBuilderFactory.newInstance();    
	        DocumentBuilder builder=factory.newDocumentBuilder();    
	        document=builder.parse(new File(filename));    
	        document.normalize(); 
	    } 
	    catch (Exception ex){ 
	        ex.printStackTrace(); 
	    }
	    return document; 
	}
	 
	public static boolean doc2XmlFile(Document document,String filename) { 
	    boolean flag = true; 
	    try { 
	    	/** 将document中的内容写入文件中   */ 
	        TransformerFactory tFactory = TransformerFactory.newInstance();    
	        Transformer transformer = tFactory.newTransformer();  
	        /** 编码 */ 
	        //transformer.setOutputProperty(OutputKeys.ENCODING, "GB2312"); 
	        DOMSource source = new DOMSource(document);  
	        StreamResult result = new StreamResult(new File(filename));    
	        transformer.transform(source, result);  
	    } catch (Exception ex) { 
	        flag = false; 
	        ex.printStackTrace(); 
	    } 
	    return flag;       
	}
}
