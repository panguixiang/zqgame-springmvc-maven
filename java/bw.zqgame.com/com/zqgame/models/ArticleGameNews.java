package com.zqgame.models;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**游戏内新闻管理model
 * 
 * @author panguixiang
 *
 */
public class ArticleGameNews {

	private Long id;
	@NotNull(message="{articleGameNews.title.NotNull}")
	@Size(min=1, max=100, message="{articleGameNews.title.Size}")
	private String title;
	private String articleURL;
	@Size(max=5000, message="{articleGameNews.articlecontent.Size}")
	private String articlecontent;
	private Date createTime;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArticleURL() {
		return articleURL;
	}
	public void setArticleURL(String articleURL) {
		this.articleURL = articleURL;
	}
	public String getArticlecontent() {
		return articlecontent;
	}
	public void setArticlecontent(String articlecontent) {
		this.articlecontent = articlecontent;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
