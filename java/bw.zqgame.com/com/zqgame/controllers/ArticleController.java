package com.zqgame.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.noo.pagination.page.PageContext;
import org.noo.pagination.page.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqgame.models.Voting;
import com.zqgame.services.ArticleService;
import com.zqgame.services.VotingService;
import com.zqgame.util.LogUtil;

/**
 * 处理前台新闻Controller
 * @author panguixiang
 *
 */
@Controller
@RequestMapping("/article")
public class ArticleController {
	private Logger LOG = Logger.getLogger(ArticleController.class);
	
	@Autowired
	private ArticleService articleService;

	@Autowired
	private VotingService votingService;

	/**
	 * 加载新闻页面时获取初始化数据
	 * @param artId
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
    @RequestMapping(value = "grade/index/{artId}", method = RequestMethod.POST,produces="application/json")
	public Map<String, Object> ajaxIndexNews(@PathVariable("artId") Long artId, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		response.setContentType("text/plain; charset=utf-8");
		Map<String, Object> result = new HashMap<String, Object>();
		
		Voting vot = votingService.getVotingByArtId(artId);
		if(vot == null) {
			vot = new Voting();
		}
        result.put("oldVoting", vot);
        result.put("oldAllVotingNum", vot.getVoting1()+vot.getVoting2()+vot.getVoting3()+vot.getVoting4()+vot.getVoting5()+vot.getVoting6()+vot.getVoting7()+vot.getVoting8());
        return result;
	
	}
	
	
	
	/**
	 * 修改新闻评价
	 * @param voting
	 * @param artId
	 * @param request
	 * @param response
	 */
	/*@RequestMapping(value = "grade/{voting}/{artId}", method = RequestMethod.POST)*/
	@ResponseBody
    @RequestMapping(value = "grade/{voting}/{artId}", method = RequestMethod.POST,produces="application/json")
	public Map<String, Object> ajaxGradeNews(@PathVariable("voting") String voting, @PathVariable("artId") Long artId, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		response.setContentType("text/plain; charset=utf-8");
		Map<String, Object> result = new HashMap<String, Object>();
		
		Voting vot = votingService.getVotingByArtId(artId);
		if(vot == null) {
			vot = new Voting();
		} 
		if(voting.equals("voting1")){
			vot.setVoting1(vot.getVoting1()+1);
		}else if(voting.equals("voting2")) {
			vot.setVoting2(vot.getVoting2()+1);
		}else if(voting.equals("voting3")) {
			vot.setVoting3(vot.getVoting3()+1);
		}else if(voting.equals("voting4")) {
			vot.setVoting4(vot.getVoting4()+1);
		}else if(voting.equals("voting5")) {
			vot.setVoting5(vot.getVoting5()+1);
		}else if(voting.equals("voting6")) {
			vot.setVoting6(vot.getVoting6()+1);
		}else if(voting.equals("voting7")) {
			vot.setVoting7(vot.getVoting7()+1);
		}else if(voting.equals("voting8")) {
			vot.setVoting8(vot.getVoting8()+1);
		}
        if(vot.getId() == null) {
        	vot.setArtId(artId);
        	votingService.save(vot);
        } else {
        	votingService.update(vot);
        }
        result.put("allVotingNum", vot.getVoting1()+vot.getVoting2()+vot.getVoting3()+vot.getVoting4()+vot.getVoting5()+vot.getVoting6()+vot.getVoting7()+vot.getVoting8());
        return result;
	}
	
	/**
	 * 新闻公告列表 
	 * @param request
	 * @param response
	 * @return
	 */
    @RequestMapping(value = "index/page", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model) {
		String dirName = request.getParameter("tag");//对应dirName字段
		List<Map> articleList = null;
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			/**
			 * 构造新闻列表
			 */
			map.put("dirName", dirName);
			articleList = articleService.articlePage(map);
			if(articleList != null && articleList.size()>0) {
				model.addAttribute("newsList", articleList);
			}
			model.addAttribute("dirName", dirName);
			Pagination pager = PageContext.getPageContext();
			model.addAttribute("pager", pager);
		} catch(Exception e) {
			LOG.error(LogUtil.getLogStr("error", "新闻公告列表-index/page",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		} 
		map.put("dirName", dirName);
		return "/news/index";
	}
	
	
	/**
	 * 前台新闻search查询
	 * @param request
	 * @param response
	 * @return
	 */
    @RequestMapping(value = "search/page", method = RequestMethod.GET)
	public String searchNewsList(HttpServletRequest request, HttpServletResponse response, Model model) {
		String artTitle = request.getParameter("tag");//对应新闻标题
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			/**
			 * 构造新闻列表
			 */
			if(!StringUtils.isEmpty(artTitle)) {
				List<Map> articleList = null;
				map.put("artTitle", "%".concat(artTitle).concat("%"));
				articleList = articleService.articlePage(map);
				if(articleList != null && articleList.size()>0) {
					model.addAttribute("newsList", articleList);
				}
			} 
			Pagination pager = PageContext.getPageContext();
			model.addAttribute("pager", pager);
			model.addAttribute("dirName", artTitle);
		} catch(Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("error", "前台新闻search查询-search/page",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		} 
		return "/news/search";
	}
}
