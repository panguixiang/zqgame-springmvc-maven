package com.zqgame.models;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

public class PictureType {

	@NotNull
	@Size(min=1,max=20)
	private Long picTypeId;//类型id
	
	@Length(min=0, max=30)
	private String picTypeName;//图片类型名称
	@Length(min=0, max=30)
	private String dirName;//英文名称
	public Long getPicTypeId() {
		return picTypeId;
	}
	public void setPicTypeId(Long picTypeId) {
		this.picTypeId = picTypeId;
	}
	public String getPicTypeName() {
		return picTypeName;
	}
	public void setPicTypeName(String picTypeName) {
		this.picTypeName = picTypeName;
	}
	public String getDirName() {
		return dirName;
	}
	public void setDirName(String dirName) {
		this.dirName = dirName;
	}
	
	
}
