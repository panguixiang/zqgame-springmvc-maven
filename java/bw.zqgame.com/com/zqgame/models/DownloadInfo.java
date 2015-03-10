package com.zqgame.models;

/**
 * 下载信息model
 * 创建人：包军 <br>
 * 创建时间：2013-1-10 <br>
 * 功能描述： <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public class DownloadInfo {

	private Long id;//自增id
	private Long typeId;//类型id
	private Integer index;//索引序号
	private String fileName;//文件名
	private String md5;//MD5码
	private String fileBulk;//文件大小
	private String versionNumber;//版本号
	private String issueTime;//发布时间
	private String upUrl;//下载链接
	private String fileSpak;//文件说明
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public Integer getIndex() {
		return index;
	}
	public void setIndex(Integer index) {
		this.index = index;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getMd5() {
		return md5;
	}
	public void setMd5(String md5) {
		this.md5 = md5;
	}
	public String getFileBulk() {
		return fileBulk;
	}
	public void setFileBulk(String fileBulk) {
		this.fileBulk = fileBulk;
	}
	public String getVersionNumber() {
		return versionNumber;
	}
	public void setVersionNumber(String versionNumber) {
		this.versionNumber = versionNumber;
	}
	public String getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(String issueTime) {
		this.issueTime = issueTime;
	}
	public String getUpUrl() {
		return upUrl;
	}
	public void setUpUrl(String upUrl) {
		this.upUrl = upUrl;
	}
	public String getFileSpak() {
		return fileSpak;
	}
	public void setFileSpak(String fileSpak) {
		this.fileSpak = fileSpak;
	}
	
}
