package com.zqgame.controllers;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.Logger;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqgame.common.Constant;
import com.zqgame.util.Digest;
import com.zqgame.util.HttpClientUtil;
import com.zqgame.util.LogUtil;

/**
 * 前台玩家注册
 * 
 * @author panguixiang
 * 
 */
@Controller
@RequestMapping("register")
public class RegisterController {

	private Logger LOG = Logger.getLogger(RegisterController.class);

	/**
	 * 快速注册入口
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/quick", method = RequestMethod.GET, produces = "application/json")
	public Map<String, Object> quickRegister(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/plain; charset=utf-8");
		Map<String, Object> result = new HashMap<String, Object>();
		JSONObject obj = null;
		/**
		 * 验证码校验
		 */
		HttpSession session = request.getSession();
		Object sessionCaptcha = session.getAttribute(Constant.CAPTCHA);
		String catchaImage = request.getParameter("captcha");
		if (StringUtils.isEmpty(catchaImage) || sessionCaptcha == null) {
			LOG.error(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-快速注册失败-验证码为空"), HttpStatus.NOT_ACCEPTABLE.value()));
			result.put("msg", "验证码为空！");
			response.setStatus(HttpStatus.NOT_ACCEPTABLE.value());
			return result;
		}
		session.removeAttribute(Constant.CAPTCHA);// 清空验证码
		if (!((String)sessionCaptcha).equalsIgnoreCase(catchaImage)) {
			LOG.error(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-快速注册失败-验证码输入错误"), HttpStatus.NOT_ACCEPTABLE.value()));
			result.put("msg", "验证码输入错误！");
			response.setStatus(HttpStatus.NOT_ACCEPTABLE.value());
			return result;
		}

		String finalRegUrl = null;
		try {
			finalRegUrl = Digest.quickRegisterFinalUrl(request);
			String jsonReturn = HttpClientUtil.getBody(finalRegUrl);
			obj = JSONObject.fromObject(jsonReturn);
			if (obj.getInt("status") == 200) {
				result.put("userName", obj.get("accountname"));
				LOG.info(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-快速注册成功"),
						obj.get("accountname"), jsonReturn));
			} else {
				result.put("userName", obj.get("accountname"));
				response.setStatus(obj.getInt("status"));
				LOG.error(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-快速注册失败-").concat(obj.get("status")+""), 
						obj.get("accountname"),finalRegUrl,jsonReturn));
			}
		} catch (Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-快速注册失败-异常错误"),
					obj!=null?obj.get("status"):"status is null", obj!=null?obj.get("accountname"):"accountname is null",
							e.getMessage(),finalRegUrl));
		}
		return result;
	}
	
	/**
	 * 生成验证码
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/captcha-image", method = RequestMethod.GET)
	public String captcha(HttpServletRequest request,
			HttpServletResponse response) {
		BufferedImage buffImg = Digest.createCataImage(request);
		// 设置图像缓存为no-cache。
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpeg");
		// 将最终生产的验证码图片输出到Servlet的输出流中
		ServletOutputStream sos = null;
		try {
			sos = response.getOutputStream();
			ImageIO.write(buffImg, "jpeg", sos);
		} catch (Exception e) {
			LOG.error(LogUtil.getLogStr("生成验证码-异常", e.getMessage()));
		} finally {
			if (sos != null) {
				try {
					sos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
	
	/**
	 * 验证用户登录名
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "checkname",method = RequestMethod.GET)
	public @ResponseBody String hasexists(@RequestParam String username) {
		String finalRegUrl = null;
		JSONObject obj = null;
		try {
			finalRegUrl = Digest.checkUserNameExistUrl(username);
			String jsonReturn = HttpClientUtil.getBody(finalRegUrl);
			obj = JSONObject.fromObject(jsonReturn);
			if (obj.getInt("status") == 200) {
			 LOG.info(LogUtil.getLogStr("register",  Constant.GAMEWEB.concat("-用户注册名重复性-通行证账号可用"), 
						"checkaccountNameExit", obj.get("accountname"), jsonReturn));
				return "true";
			} else if (obj.getInt("status") == 505) {
				LOG.error(LogUtil.getLogStr("register",Constant.GAMEWEB.concat(
						"-用户注册名重复性-通行证账号已存在"),
						obj.get("accountname"),jsonReturn,finalRegUrl));
				return "false";
			} else {
				LOG.error(LogUtil.getLogStr("register",Constant.GAMEWEB.concat("-用户注册名重复性-接口其他错误")
						,obj.get("accountname"),jsonReturn, finalRegUrl));
				return "false";
			}
		} catch (Exception e) {
			LOG.error(LogUtil.getLogStr("register", Constant.GAMEWEB.concat("-用户注册名重复性-异常错误"),
					obj!=null?obj.get("status"):"status is null", obj!=null?obj.get("accountname"):"accountname is null",
							e.getMessage(), finalRegUrl));
		}
		return "false";
	}

}
