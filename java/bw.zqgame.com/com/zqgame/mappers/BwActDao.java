package com.zqgame.mappers;

import java.util.List;

import com.zqgame.models.BwAct;

/**
 * 
 * 创建人：包军 <br>
 * 创建时间：2013-1-25 <br>
 * 功能描述：兵王活动中心接口 dao<br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public interface BwActDao {

	/**
	 * 查询兵王活动列表分页显示
	 * @return
	 */
	public List<BwAct> bwActPageList();
}
