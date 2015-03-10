package com.zqgame.models;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 新闻model
 * @author User
 *
 */
public class Article implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1949302137726966417L;
 
	private Long artId;//新闻自增ID
	@NotNull(message="{article.artTypeId.NotNull}")
	private Long artTypeId;//外键 对应表kz_ArticleType （kz_ArticleType 字段）
	@NotNull(message = "{article.artTitle.NotNull}")
	@Size(min=1, max=100, message="{article.artTitle.Size}")
	private String artTitle;//新闻标题
	@Size(max=100, message="{article.titlePicPath.Size}")
	private String titlePicPath;//标题图片相对路径titlePicpath
	private String artPath;//新闻静态页面生成路径
	@Size(max=100, message="{article.source.Size}")
	private String source;//来源
	@Size(max=30, message="{article.author.Size}")
	private String author;//文章作者
	private Integer hits;//默认0--无用
	private Long templateId;//默认0--无用
	@Size(max=5000, message="{article.artContent.Size}")
	private String artContent;//内容
	private Integer isHot;//是否热点文章
	private Integer isAuthen;//是否审核    是=1，不是=0
	private Integer isUseLink;//是否引用链接
	@Size(max=100, message="{article.linkUrl.Size}")
	private String linkUrl;//超链接地址
	private Date createTime;//创建时间
	private Integer IsActivites;//是否官方活动     是=1，不是=0
	private String colorTitle;//新闻标题颜色 无用  
	private Integer titlePRI;//优先级
	@NotNull(message = "{article.keywords.NotNull}")
	@Size(min=1, max=500, message="{article.keywords.Size}")
	private String keywords;//关键字
	@NotNull(message = "{article.description.NotNull}")
	@Size(min=1, max=500, message="{article.description.Size}")
	private String description;//描叙
	public Long getArtId() {
		return artId;
	}
	public void setArtId(Long artId) {
		this.artId = artId;
	}
	public Long getArtTypeId() {
		return artTypeId;
	}
	public void setArtTypeId(Long artTypeId) {
		this.artTypeId = artTypeId;
	}
	public String getArtTitle() {
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	public String getTitlePicPath() {
		return titlePicPath;
	}
	public void setTitlePicPath(String titlePicPath) {
		this.titlePicPath = titlePicPath;
	}
	public String getArtPath() {
		return artPath;
	}
	public void setArtPath(String artPath) {
		this.artPath = artPath;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Integer getHits() {
		return hits;
	}
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	public Long getTemplateId() {
		return templateId;
	}
	public void setTemplateId(Long templateId) {
		this.templateId = templateId;
	}
	public String getArtContent() {
		return artContent;
	}
	public void setArtContent(String artContent) {
		this.artContent = artContent;
	}
	public Integer getIsHot() {
		return isHot;
	}
	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}
	public Integer getIsAuthen() {
		return isAuthen;
	}
	public void setIsAuthen(Integer isAuthen) {
		this.isAuthen = isAuthen;
	}
	public Integer getIsUseLink() {
		return isUseLink;
	}
	public void setIsUseLink(Integer isUseLink) {
		this.isUseLink = isUseLink;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Integer getIsActivites() {
		return IsActivites;
	}
	public void setIsActivites(Integer isActivites) {
		IsActivites = isActivites;
	}
	public String getColorTitle() {
		return colorTitle;
	}
	public void setColorTitle(String colorTitle) {
		this.colorTitle = colorTitle;
	}
	public Integer getTitlePRI() {
		return titlePRI;
	}
	public void setTitlePRI(Integer titlePRI) {
		this.titlePRI = titlePRI;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Article [artId=" + artId + ", artTypeId=" + artTypeId
				+ ", artTitle=" + artTitle + ", titlePicPath=" + titlePicPath
				+ ", artPath=" + artPath + ", source=" + source + ", author="
				+ author + ", hits=" + hits + ", templateId=" + templateId
				+ ", artContent=" + artContent + ", isHot=" + isHot
				+ ", isAuthen=" + isAuthen + ", isUseLink=" + isUseLink
				+ ", linkUrl=" + linkUrl + ", createTime=" + createTime
				+ ", IsActivites=" + IsActivites + ", colorTitle=" + colorTitle
				+ ", titlePRI=" + titlePRI + ", keywords=" + keywords
				+ ", description=" + description + "]";
	}

	
}
