package com.zqgame.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.noo.pagination.page.PageContext;
import org.noo.pagination.page.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zqgame.models.BwAct;
import com.zqgame.services.BwActService;
import com.zqgame.util.LogUtil;

/**
 * 
 * 创建人：包军 <br>
 * 创建时间：2013-1-25 <br>
 * 功能描述：兵王活动中心控制器<br>
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
@RequestMapping("/index")
public class ActController {

	private Logger LOG = Logger.getLogger(ActController.class);
	
	@Autowired
	private BwActService bwActService;
	
	/**
	 * 分页查询活动列表
	 * 返回json
	 * @param request
	 * @param response
	 * @return Map<String, Object>
	 */
    @RequestMapping(value = "bwact/page", method = RequestMethod.GET)
	public String bwActList(HttpServletRequest request, HttpServletResponse response, Model model) {
		List<BwAct> bwActList = null;
		try {
			//获取活动列表
			bwActList = bwActService.bwActPageList();
			if(bwActList != null && bwActList.size()>0) {
				model.addAttribute("actList", bwActList);
			}
			Pagination pager = PageContext.getPageContext();
			model.addAttribute("pager", pager);
		} catch(Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("error", "分页查询活动列表-bwActList",HttpStatus.INTERNAL_SERVER_ERROR.value() ));
		} 
		return "/act/index";
	}
}
