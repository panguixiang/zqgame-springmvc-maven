package com.zqgame.models;

/**
 * 问卷调查model 天道
 * @author panguixiang
 *
 */
public class Vote {

	private Long voteId;
	private String voteTitle;
	private Integer isMultiple;
	private String options;
	private Integer optionsCount;
	private String results;
	private String createTime;
	public Long getVoteId() {
		return voteId;
	}
	public void setVoteId(Long voteId) {
		this.voteId = voteId;
	}
	public String getVoteTitle() {
		return voteTitle;
	}
	public void setVoteTitle(String voteTitle) {
		this.voteTitle = voteTitle;
	}
	public Integer getIsMultiple() {
		return isMultiple;
	}
	public void setIsMultiple(Integer isMultiple) {
		this.isMultiple = isMultiple;
	}
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
	}
	public Integer getOptionsCount() {
		return optionsCount;
	}
	public void setOptionsCount(Integer optionsCount) {
		this.optionsCount = optionsCount;
	}
	public String getResults() {
		return results;
	}
	public void setResults(String results) {
		this.results = results;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	
}
