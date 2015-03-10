package com.zqgame.mappers;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.ImageInfo;

/**
 * 
 * 创建人：包军<br>
 * 创建时间：2013-1-23 <br>
 * 功能描述：图片信息dao <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public interface ImagesDao {

	/**
     * 根据类型名称获取图片列表
     * @param dirName
	 * @return
     */
	public List<ImageInfo> getImageList(@Param("dirName") String dirName);
}
