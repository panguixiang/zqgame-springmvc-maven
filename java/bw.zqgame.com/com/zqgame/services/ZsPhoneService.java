package com.zqgame.services;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.ZsPhoneDao;
import com.zqgame.models.ZsPhone;
/**
 * 签到激活码service
 * @author panguixiang
 *
 */
/**
 * 签到激活码service
 * @author panguixiang
 *
 */
@Service
public class ZsPhoneService {

	@Autowired
	private ZsPhoneDao zsPhoneDao;
	
	/**
	 * 查询单个ZsPhone
	 * @param cardCode
	 * @return
	 */
	public ZsPhone queryZsPhone(ZsPhone zsPhone) {
		return zsPhoneDao.queryZsPhone(zsPhone);
	}
	
	/**
	 * 修改ZsPhone
	 * @param zsPhone
	 */
	public void updateZsPhone(ZsPhone zsPhone) {
		zsPhoneDao.updateZsPhone(zsPhone);
	}
	
	/**
	 * 预约激活码前查看是否已经使用过此手机号码和邮箱  war2
	 */
	public Map getBespeakCardCodeByMobileOrEmail(String mobile, String email) {
		return zsPhoneDao.getBespeakCardCodeByMobileOrEmail(mobile, email);
	}
	/**
	 * 预约激活码   war2
	 */
	public void insertBespeakCardCode(String mobile, String email) {
		zsPhoneDao.insertBespeakCardCode(mobile, email);
	}
}
