package com.zqgame.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqgame.common.Constant;
import com.zqgame.models.DownloadInfo;
import com.zqgame.models.LinkInfo;
import com.zqgame.services.DownloadService;
import com.zqgame.services.LinksService;
import com.zqgame.util.LogUtil;

/**
 * 
 * 创建人：包军 <br>
 * 创建时间：2013-1-24 <br>
 * 功能描述：兵王下载中心控制器<br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
@SuppressWarnings("restriction")
@Controller
public class DownloadController{
	
	private Logger LOG = Logger.getLogger(DownloadController.class);
	
	@Autowired
	private DownloadService downloadService;
	
	@Autowired
	private LinksService linksService;
	
	/**
	 *  异步获取下载页面相关信息列表
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "download", method = RequestMethod.POST, produces = "application/json")
	public Map<String, Object> fileUpload(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/plain; charset=utf-8");
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			
			// 获取客户端下载列表
			List<DownloadInfo> clientList = downloadService.getDownloadList(Constant.CLIENT_DOWNLOAD);
			// 获取微端下载列表
			List<DownloadInfo> smallendList = downloadService.getDownloadList(Constant.SMALLEND_DOWNLOAD);
			// 获取补丁下载列表
			List<DownloadInfo> patchList = downloadService.getDownloadList(Constant.PATCH_DOWNLOAD);
			// 获取客户端媒体分流列表
			List<LinkInfo> clientMediaList = linksService.getLinkList(Constant.CLIENT_MEDIA);
			// 获取微端媒体分流列表
			List<LinkInfo> smallendMediaList = linksService.getLinkList(Constant.SMALLEND_MEDIA);
			// 最新版本完整客户端下载
			List<DownloadInfo> newClientList = downloadService.getDownloadList(Constant.NEWS_CLIENT);
			
			
			result.put("clientList", clientList);
			result.put("clientMediaList", clientMediaList);
			result.put("smallendList", smallendList);	
			result.put("smallendMediaList", smallendMediaList);	
			result.put("patchList", patchList);
			result.put("newClientList", newClientList);
		} catch (Exception e) {
			LOG.error(LogUtil.getLogStr("error", "获取下载页面信息列表-download",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		}
		return result;
	}
}
