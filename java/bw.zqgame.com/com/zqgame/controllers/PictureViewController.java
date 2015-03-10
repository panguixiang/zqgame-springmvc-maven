package com.zqgame.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zqgame.common.Constant;
import com.zqgame.models.Picture;
import com.zqgame.models.PictureType;
import com.zqgame.services.PictureService;
import com.zqgame.util.Digest;
import com.zqgame.util.LogUtil;

/**
 * 处理前台图片Controller
 * 创建人：杜增初 <br>
 * 创建时间：2013-1-24 <br>
 * 功能描述： <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
@Controller
@RequestMapping("/article")
public class PictureViewController {
	
	private Logger LOG = Logger.getLogger(PictureViewController.class);
	
	@Autowired
	private PictureService pictureService;
	
	/**
	 * 获得图片列表
	 * 返回json
	 * @param request
	 * @param response
	 * @return
	 */
    @RequestMapping(value = "pictureList/page", method = RequestMethod.GET)
	public String ajaxPictureList(HttpServletRequest request, HttpServletResponse response, Model model) {
		String dirName = request.getParameter("tag");
		List<Map> pictureList = null;
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			/**
			 * 构造新闻列表
			 */
			map.put("dirName", dirName);
			pictureList = pictureService.picturePage(map);
			if(pictureList != null && pictureList.size()>0) {
				model.addAttribute("pictureList", pictureList);
			}
			
			Pagination pager = PageContext.getPageContext();
			model.addAttribute("pager", pager);
			model.addAttribute("dirName", dirName);
		} catch(Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("error", "获得图片列表异常-pictureList/page",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		} 
		return "/picture/index";
	}
		
    @RequestMapping(value = "initadd/picture")
    public String initAddPicture(Model model) {
    	return "/picture/uploadpictures";
    }
	/**
	 * 前台玩家上传图片
	 *  
	 * @param file
	 * @param request
	 * @param response
	 * @return 
	 * @author:杜增初 
	 * @date:2013-1-24
	 */
	@ResponseBody
	@RequestMapping(value = "addpictrue", method = RequestMethod.POST, produces = "application/json")
	public Map<String, Object> ajaxPictureUplodImg(
			@RequestParam("file") MultipartFile file,
			HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain; charset=utf-8");
		String picInfo = request.getParameter("picInfo");// 图片标题
		String gameRoleName = request.getParameter("gameRoleName");// 角色名
		Picture picture = new Picture();
		picture.setPicInfo(picInfo);
		picture.setGameRoleName(gameRoleName);
		PictureType pictureType = pictureService.pictureTypeListByDirName(Constant.PIC_TYPE_PHOTO);
		picture.setPicTypeId((pictureType.getPicTypeId()));
		
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			if (!file.isEmpty()) {
				String orgFileName = file.getOriginalFilename();
				if (Digest.isAcceptedFileType(orgFileName)) {
					String file_path = Digest.saveFile(file, "front", 2).replace("\\", "/");
					result.put("file_path", file_path);
					picture.setPicPath(file_path);
					pictureService.createPicture(picture);//保存数据库
				} else {
					response.setStatus(HttpStatus.NOT_ACCEPTABLE
							.value());
				}
			} else {
				response.setStatus(HttpStatus.UNPROCESSABLE_ENTITY.value());
			}
		} catch (Exception e) {
			response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
			LOG.error(LogUtil.getLogStr("error", "前台玩家上传图片异常-addpictrue",HttpStatus.INTERNAL_SERVER_ERROR.value(),e));
		}
		return result;
	}
}
