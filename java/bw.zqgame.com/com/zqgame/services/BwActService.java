package com.zqgame.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.BwActDao;
import com.zqgame.models.BwAct;

/**
 * 
 * 创建人：包军<br>
 * 创建时间：2013-1-25 <br>
 * 功能描述：兵王活动中心服务层 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
@SuppressWarnings("restriction")
@Service
public class BwActService {

	@Autowired
	private BwActDao actDao;
	
	/**
	 * 分页查询兵王活动信息列表
	 * @return
	 */
	public List<BwAct> bwActPageList() {
		return actDao.bwActPageList();
	}
}
