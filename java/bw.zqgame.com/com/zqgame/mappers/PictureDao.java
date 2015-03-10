package com.zqgame.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.Picture;
import com.zqgame.models.PictureType;


/**
 * 图片管理Dao
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
public interface PictureDao {


	/**
	 * 依据dirName分页查询图片
	 * @param map
	 * @return
	 */
	public List<Map> picturePage(@Param("map") Map<String, Object> map);
	
	/**
	 * 添加图片
	 *  
	 * @param map
	 * @return 
	 * @author:杜增初 
	 * @date:2013-1-24
	 */
	public int createPicture(@Param("picture") Picture picture);
	
	/**
	 * 查询图片类型
	 *  
	 * @param dirName
	 * @return 
	 * @author:杜增初 
	 * @date:2013-1-24
	 */
	public PictureType pictureTypeListByDirName(@Param("dirName") String dirName);
}
