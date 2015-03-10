package com.zqgame.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.DownloadInfo;

/**
 * 
 * 创建人：包军<br>
 * 创建时间：2013-1-24 <br>
 * 功能描述：下载dao <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public interface DownloadDao {

	/**
     * 根据类型名称获取下载列表
     * @param dirName
	 * @return
     */
	public List<DownloadInfo> getDownloadList(@Param("dirName") String dirName);
	
}
