package com.zqgame.mappers;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.ZsPhone;

/**
 * zs签到激活码dao
 * @author panguixiang
 *
 */
public interface ZsPhoneDao {

	/**
	 * 查询单条ZsPhone
	 * @param cardCode
	 * @return
	 */
	public ZsPhone queryZsPhone(@Param("zsPhone") ZsPhone zsPhone);
	
	/**
	 * 修改ZsPhone
	 * @param zsPhone
	 */
	public void updateZsPhone(@Param("zsPhone") ZsPhone zsPhone);
	
	/**
	 * 预约激活码前查看是否已经使用过此手机号码和邮箱  war2
	 */
	public Map getBespeakCardCodeByMobileOrEmail(@Param("mobile") String mobile, @Param("email") String email);
	
	/**
	 * 预约激活码   war2
	 */
	public void insertBespeakCardCode(@Param("mobile") String mobile, @Param("email") String email);
}
