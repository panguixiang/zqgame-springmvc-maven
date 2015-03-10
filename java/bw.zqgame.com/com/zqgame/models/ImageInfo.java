package com.zqgame.models;

/**
 * 
 * 创建人：包军 <br>
 * 创建时间：2013-1-20 <br>
 * 功能描述：图片信息model <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public class ImageInfo {

	private Long id;//自增id
	private Long typeId;//类型id
	private Integer index;//索引序号
	private String imagePath;//图片路径
	private String imageUrl;//图片url链接
	private String imageAbspath;//
	private String imageName;//图片名称
	
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
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getImageAbspath() {
		return imageAbspath;
	}
	public void setImageAbspath(String imageAbspath) {
		this.imageAbspath = imageAbspath;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
}
