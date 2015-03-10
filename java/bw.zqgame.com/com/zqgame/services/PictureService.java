package com.zqgame.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.PictureDao;
import com.zqgame.models.Picture;
import com.zqgame.models.PictureType;

/**
 * 图片服务层
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
@Service("PictureService")
public class PictureService {

	@Autowired
	private PictureDao pictureDao;
	
	/**
	 * 依据dirName分页查询图片
	 * @param map
	 * @return
	 */
	public List<Map> picturePage(Map<String, Object> map) {
		return pictureDao.picturePage(map);
	}
	
	/**
	 * 添加图片
	 *  
	 * @param picture
	 * @return 
	 * @author:杜增初 
	 * @date:2013-1-25
	 */
	public boolean createPicture(Picture picture) {
		return pictureDao.createPicture(picture) ==1;
	}
	
	/**
	 * 查询图片类型
	 *  
	 * @param dirName
	 * @return 
	 * @author:杜增初 
	 * @date:2013-1-25
	 */
	public PictureType pictureTypeListByDirName(String dirName) {
		return pictureDao.pictureTypeListByDirName(dirName);
	}
}
