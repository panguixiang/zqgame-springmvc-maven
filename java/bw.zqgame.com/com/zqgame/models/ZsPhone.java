package com.zqgame.models;

import java.util.Date;

/**
 * 签到激活码Model
 * @author panguixiang
 *
 */
public class ZsPhone {

	private Long id;
	private String phone;
	private Integer state;//0=默认状态    1=未激活       2=已被激活
	private Date time;
	private String userName;
	private String cardCode;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCardCode() {
		return cardCode;
	}
	public void setCardCode(String cardCode) {
		this.cardCode = cardCode;
	}
	
}
