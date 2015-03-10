package com.zqgame.models;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 活动model
 * @author panguixiang
 *
 */
public class BwAct {
    
	private Long id;//自增长主键
	
	@NotNull(message="{bwAct.actTitle.NotNull}")
	@Size(min=1, max=100, message="{bwAct.actTitle.Size}")
	private String actTitle;//活动标题
	
	@NotNull(message="{bwAct.actTime.NotNull}")
	@Size(min=1, max=100, message="{bwAct.actTime.Size}")
	private String actTime;//活动时间
	
	private Integer actState;//活动状态
	
	private Integer actFirst;//优先级
	
	@NotNull(message="{bwAct.actPicpath.NotNull}")
	@Size(min=1, max=100, message="{bwAct.actPicpath.Size}")
	private String actPicpath;//活动图片url
	
	@NotNull(message="{bwAct.actUrl.NotNull}")
	@Size(min=1, max=100, message="{bwAct.actUrl.Size}")
	private String actUrl;//活动链接url
	
	private Date addTime;//创建时间
	
	@Size(max=100, message="{bwAct.standby.Size}")
	private String standby;//不知道是干啥的

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getActTitle() {
		return actTitle;
	}

	public void setActTitle(String actTitle) {
		this.actTitle = actTitle;
	}

	public String getActTime() {
		return actTime;
	}

	public void setActTime(String actTime) {
		this.actTime = actTime;
	}

	public Integer getActState() {
		return actState;
	}

	public void setActState(Integer actState) {
		this.actState = actState;
	}

	public Integer getActFirst() {
		return actFirst;
	}

	public void setActFirst(Integer actFirst) {
		this.actFirst = actFirst;
	}

	public String getActPicpath() {
		return actPicpath;
	}

	public void setActPicpath(String actPicpath) {
		this.actPicpath = actPicpath;
	}

	public String getActUrl() {
		return actUrl;
	}

	public void setActUrl(String actUrl) {
		this.actUrl = actUrl;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getStandby() {
		return standby;
	}

	public void setStandby(String standby) {
		this.standby = standby;
	}

	@Override
	public String toString() {
		return "BwAct [id=" + id + ", actTitle=" + actTitle + ", actTime="
				+ actTime + ", actState=" + actState + ", actFirst=" + actFirst
				+ ", actPicpath=" + actPicpath + ", actUrl=" + actUrl
				+ ", addTime=" + addTime + ", standby=" + standby
				+ ", getId()=" + getId() + ", getActTitle()=" + getActTitle()
				+ ", getActTime()=" + getActTime() + ", getActState()="
				+ getActState() + ", getActFirst()=" + getActFirst()
				+ ", getActPicpath()=" + getActPicpath() + ", getActUrl()="
				+ getActUrl() + ", getAddTime()=" + getAddTime()
				+ ", getStandby()=" + getStandby() + "]";
	}
	
}
