package com.zqgame.models;

import java.util.Date;

public class Picture {

	private Long picId;//图片自增ID
	private Long picTypeId;//图片类型 ：外键 对应表kz_picture_type （id字段）
	private String picInfo;//图片标题
	private String picPath;//图片路径
	private String personalIntro;//图片介绍
	private Long picSize;//图片大小
	private Integer isAuthen;//是否审核：1=是，0=不是
	private Integer isFirstShow;//是否首页显示：1=是，0=不是
	private Date createTime;//创建时间

	/** 个人资料 */
	private String gameServer;//游戏服务器
	private String gameRoleName;//游戏角色名
	private String age;//年龄
	private String sex;//性别
	private String email;//电子邮箱
	private String qqNumber;//QQ号码
	private String address;//地址
	private String friendType;//找朋友类型
	public Long getPicId() {
		return picId;
	}
	public void setPicId(Long picId) {
		this.picId = picId;
	}
	public Long getPicTypeId() {
		return picTypeId;
	}
	public void setPicTypeId(Long picTypeId) {
		this.picTypeId = picTypeId;
	}
	public String getPicInfo() {
		return picInfo;
	}
	public void setPicInfo(String picInfo) {
		this.picInfo = picInfo;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	public String getPersonalIntro() {
		return personalIntro;
	}
	public void setPersonalIntro(String personalIntro) {
		this.personalIntro = personalIntro;
	}
	public Long getPicSize() {
		return picSize;
	}
	public void setPicSize(Long picSize) {
		this.picSize = picSize;
	}
	public Integer getIsAuthen() {
		return isAuthen;
	}
	public void setIsAuthen(Integer isAuthen) {
		this.isAuthen = isAuthen;
	}
	public Integer getIsFirstShow() {
		return isFirstShow;
	}
	public void setIsFirstShow(Integer isFirstShow) {
		this.isFirstShow = isFirstShow;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getGameServer() {
		return gameServer;
	}
	public void setGameServer(String gameServer) {
		this.gameServer = gameServer;
	}
	public String getGameRoleName() {
		return gameRoleName;
	}
	public void setGameRoleName(String gameRoleName) {
		this.gameRoleName = gameRoleName;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQqNumber() {
		return qqNumber;
	}
	public void setQqNumber(String qqNumber) {
		this.qqNumber = qqNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFriendType() {
		return friendType;
	}
	public void setFriendType(String friendType) {
		this.friendType = friendType;
	}
	
}
