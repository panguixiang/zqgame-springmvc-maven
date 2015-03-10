package com.zqgame.models;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

/**
 * 新闻对应的类型model
 * @author panguixiang
 *
 */
public class ArticleType {

	@NotNull
	@Size(min=1,max=20)
	private Long artTypeId;
	
	@Length(min=0, max=20)
	private String artTypeName;//中文名称
	@Length(min=0, max=30)
	private String dirName;//英文标示
	@NotNull
	@Size(min=1, max=20)
	private Long parentId;//父级id
	@NotNull
	private Integer deep;//级别
	
	private String template;//静态页面模板

	public Long getArtTypeId() {
		return artTypeId;
	}

	public void setArtTypeId(Long artTypeId) {
		this.artTypeId = artTypeId;
	}

	public String getArtTypeName() {
		return artTypeName;
	}

	public void setArtTypeName(String artTypeName) {
		this.artTypeName = artTypeName;
	}

	public String getDirName() {
		return dirName;
	}

	public void setDirName(String dirName) {
		this.dirName = dirName;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public Integer getDeep() {
		return deep;
	}

	public void setDeep(Integer deep) {
		this.deep = deep;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}
	
}
