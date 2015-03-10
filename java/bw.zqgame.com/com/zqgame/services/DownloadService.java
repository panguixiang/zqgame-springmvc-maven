package com.zqgame.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.DownloadDao;
import com.zqgame.models.DownloadInfo;

/**
 * 
 * 创建人：包军<br>
 * 创建时间：2013-1-24 <br>
 * 功能描述：兵王下载中心服务层 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
@SuppressWarnings("restriction")
@Service("downloadService")
public class DownloadService {

	@Autowired
	private DownloadDao downloadDao;
	
	/**
	 * 
	 * 根据类型名称获取下载信息列表
	 * @param dirName
	 * @return List<DownloadInfo>
	 */
	public List<DownloadInfo> getDownloadList(String dirName) {
		return downloadDao.getDownloadList(dirName);
	}
}
