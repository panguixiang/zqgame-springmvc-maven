package com.zqgame.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.HashMap;
import java.util.Map;
import java.lang.Integer;
/**
 * Mybatis物理分页
 * @author User
 *
 */
public class ParsePagination {

	private Map<String,String> cookieMap;
	private int pageSize = 0;
	private int page = 1;
	public int getPageSize()
	{
		return pageSize;
	}
	public int getPage()
	{
		return page;
	}

	private static final Logger LOG = LoggerFactory.getLogger(ParsePagination.class);
	public ParsePagination(HttpServletRequest request)
	{

		cookieMap  = new HashMap<String,String>();

		Cookie [] cookies = request.getCookies();
		parseCookies(cookies);

		String pageSize = request.getParameter("page_size");
		String page = request.getParameter("page");

		String cookiePageSize = cookieMap.get("page_size");
		String cookiePage = cookieMap.get("page");

		HttpSession session = request.getSession();
		String sessionPage = (String)session.getAttribute("page");
		String sessionPageSize = (String)session.getAttribute("page_size");
		
		if(!StringUtils.isEmpty(pageSize)){
			this.pageSize = Integer.parseInt(pageSize);
		} else if(!StringUtils.isEmpty(cookiePageSize)) {
			this.pageSize = Integer.parseInt(cookiePageSize);
		} else if(!StringUtils.isEmpty(sessionPageSize)) {
			this.pageSize = Integer.parseInt(sessionPageSize);
		}

		if(!StringUtils.isEmpty(page)){
			this.page = Integer.parseInt(page);
		} else if(!StringUtils.isEmpty(cookiePage)) {
			this.page = Integer.parseInt(cookiePage);
		} else if(!StringUtils.isEmpty(sessionPage)) {
			this.page = Integer.parseInt(sessionPage);
		}
	}
	protected void parseCookies(Cookie [] cookies )
	{
		if(cookies != null) {
			for( Cookie cookie : cookies ) {
				cookieMap.put(cookie.getName(),cookie.getValue());
			}
		}
	}
	public String getCookieByName(String name)
	{
		return cookieMap.get(name);
	}
}
