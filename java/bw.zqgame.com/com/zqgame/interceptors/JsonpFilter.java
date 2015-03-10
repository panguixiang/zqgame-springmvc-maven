package com.zqgame.interceptors;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import org.springframework.http.HttpStatus;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import org.springframework.http.HttpStatus;

public final class JsonpFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
			ServletException {
		if (request.getParameter("callback") != null) {
			ByteResponseWrapper brw = new ByteResponseWrapper((HttpServletResponse) response);
			chain.doFilter(request, brw);
			String out = new String(brw.getBytes());
			Map<String, Object> map = null;
			try {
				map = JsonTool.getMap4Json(out);
			} catch (JSONException ex) {

			}
			if (map != null) {
				((HttpServletResponse) response).setStatus(HttpStatus.OK.value());
				int status = brw.getStatus();
				if (status >= 200 && status < 300 || status == 304) {
					if (status == 304) {
						((HttpServletResponse) response).setStatus(HttpStatus.NOT_MODIFIED.value());
					}
					map.put("status", "success");
				} else {
					map.put("status", "error");
				}
				out = JSONObject.fromObject(map).toString();
			}
			out = request.getParameter("callback") + "(" + out;
			out += ")";
			response.setContentType("application/json; charset=utf-8");
			response.setContentLength(out.getBytes().length);
			response.getOutputStream().write(out.getBytes());
		} else {
			chain.doFilter(request, response);
		}
	}

	public void destroy() {
	}

	public void init(FilterConfig filterConfig) {
	}

	static class ByteResponseWrapper extends HttpServletResponseWrapper {
		private PrintWriter writer;
		private ByteOutputStream output;
		private int code = 200;

		public byte[] getBytes() {
			writer.flush();
			return output.getBytes();
		}

		public ByteResponseWrapper(HttpServletResponse response) {
			super(response);
			output = new ByteOutputStream();
			writer = new PrintWriter(output);
		}

		@Override
		public PrintWriter getWriter() {
			return writer;
		}

		@Override
		public ServletOutputStream getOutputStream() throws IOException {
			return output;
		}


		public int getStatus() {
			return code;
		}
		
	    public void sendRedirect(String location) throws IOException {
	    	code = HttpStatus.MOVED_TEMPORARILY.value();
	    	super.sendRedirect(location);
	    }
		
		@Override
		public void setStatus(int sc) {
			this.code = sc;
		}

		@Override
		public void setStatus(int sc, String message) {
			this.code = sc;
		}

		@Override
		public void sendError(int sc) throws IOException {
			this.code = sc;
		}

		@Override
		public void sendError(int sc, String msg) throws IOException {
			this.code = sc;
		}
	}

	static class ByteOutputStream extends ServletOutputStream {
		private ByteArrayOutputStream bos = new ByteArrayOutputStream();

		@Override
		public void write(int b) throws IOException {
			bos.write(b);
		}

		public byte[] getBytes() {
			return bos.toByteArray();
		}
	}

	private static class JsonTool {
		public static Map getMap4Json(String jsonString) {
			JSONObject jsonObject = JSONObject.fromObject(jsonString);
			Iterator keyIter = jsonObject.keys();
			String key;
			Object value;
			Map valueMap = new HashMap();

			while (keyIter.hasNext()) {
				key = (String) keyIter.next();
				value = jsonObject.get(key);
				valueMap.put(key, value);
			}

			return valueMap;
		}
	}
}