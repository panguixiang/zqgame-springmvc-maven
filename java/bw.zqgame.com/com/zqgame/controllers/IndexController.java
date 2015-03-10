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
import com.zqgame.models.Article;
import com.zqgame.models.ImageInfo;
import com.zqgame.models.LinkInfo;
import com.zqgame.services.ArticleService;
import com.zqgame.services.ImagesService;
import com.zqgame.services.LinksService;
import com.zqgame.util.LogUtil;

@SuppressWarnings("restriction")
@Controller
public class IndexController {
	
	private Logger LOG = Logger.getLogger(IndexController.class);

	@Autowired
	private ArticleService articleService;
	@Autowired
	private ImagesService imagesService;
	@Autowired
	private LinksService linksService;

	/**
	 *获得indexMain页面新闻,活动等信息
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "indexnews", method = RequestMethod.POST, produces = "application/json")
	public Map<String, Object> fileUpload(HttpServletRequest request,
			HttpServletResponse response) {
		response.setContentType("text/plain; charset=utf-8");
		Map<String, Object> result = new HashMap<String, Object>();
		List<Map> articleList = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("begin", 0);
		map.put("end", 7);
		try {
			/**
			 * 构造新闻列表
			 */
			String[] newsDirName = { Constant.HOME_GAMENEWS,Constant.HOME_BULLETIN,Constant.HOME_ACTNEWS,Constant.HOME_MEDIA};
			for (String dirName : newsDirName) {
				map.put("dirName", dirName);
				articleList = articleService.articleByMap(map);
				if (articleList != null && articleList.size() > 0) {
					result.put(dirName, articleList);
				}
			}
			/**
			 * 构造最新
			 */
			articleList = articleService.articleList(map);
			if (articleList != null && articleList.size() > 0) {
				result.put("mustnew", articleList);
			}
			/**
			 * 构造头条新闻
			 */
			Article topNews = articleService.topNews();
			result.put("topNews", topNews);
			/**
			 * 获取首页轮播图片
			 */
			List<ImageInfo> carouselPicList = imagesService.getImageList(Constant.HOME_CAROUSEL_PIC);
			result.put("carouselPicList", carouselPicList);
			/**
			 * 首页4图广告
			 */
			List<ImageInfo> actPic4List = imagesService.getImageList(Constant.HOME_ACT_PIC4);
			result.put("actPic4List", actPic4List);
			/**
			 * 首页顶部连接
			 */
			List<LinkInfo> topLinkList = linksService.getLinkList(Constant.HOME_TOP_LINK);
			result.put("topLinkList", topLinkList);
			/*获得后台IP，端口号地址，给前台调用后台上传的图片做显示地址*/
		/*	result.put("imageIPandPort", Constant.IMAGE_IPAND_PORT);*/
		} catch (Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("error", "获得indexMain页面新闻,活动等信息异常-indexnews",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		}
		return result;
	}
	
}
