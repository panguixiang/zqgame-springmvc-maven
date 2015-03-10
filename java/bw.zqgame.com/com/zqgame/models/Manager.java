package com.zqgame.models;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 后台管理员model(validation注解验证只是提供后台验证防止跳过脚本跨站攻击)
 * @author panguixiang
 *
 */
public class Manager {

	/**
	 * 后台用户登录名
	 * 
	 */
	@NotNull(message="{manager.userId.notNull}")
	@Size(max=20, message="{manager.userId.size}")
	private String userId;
	
	/**
	 * 后台用户昵称
	 */
	@NotNull(message="{manager.userName.notNull}")
	@Size(max=10, message="{manager.userName.size}")
	private String userName;
	
	/**
	 * 后台登录密码
	 */
	@NotNull(message="{manager.pwd.notNull}")
	@Size(max=32, message="{manager.pwd.size}")
	private String pwd;
	
	/**
	 * 修改密码，旧密码
	 */
	@Size(max=32, message="{manager.oldPwd.size}")
	private String oldPwd;
	
	/**
	 * 用户IP
	 */
	@Size(max=15, message="{manager.ip.size}")
	private String ip;
	
	
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	
	private List<Role> roleList;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getOldPwd() {
		return oldPwd;
	}
	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}
	public List<Role> getRoleList() {
		return roleList;
	}
	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
	
}
