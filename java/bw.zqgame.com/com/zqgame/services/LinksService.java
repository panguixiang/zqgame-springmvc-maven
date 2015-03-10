package com.zqgame.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.LinksDao;
import com.zqgame.models.LinkInfo;

/**
 * 
 * 创建人：包军<br>
 * 创建时间：2013-1-23 <br>
 * 功能描述：兵王链接信息服务层 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
@SuppressWarnings("restriction")
@Service("linksService")
public class LinksService {

	@Autowired
	private LinksDao linksDao;
	
	/**
	 * 
	 * 根据类型名称获取链接信息列表
	 * @param dirName
	 * @return List<LinkInfo>
	 */
	public List<LinkInfo> getLinkList(String dirName){		
		return linksDao.getLinkList(dirName);
	}
}
