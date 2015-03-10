package com.zqgame.models;

import java.io.Serializable;
import java.util.Date;

/**
 * 新闻评价统计Model
 * @author panguixiang
 *
 */
public class Voting implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2181751626751380825L;

	private Long id;//主键ID
	private Long artId;//关联新闻Id
	private int Voting1 = 0;//表情1评论数
	private int Voting2  = 0;//表情2评论数
	private int Voting3  = 0;//表情3评论数
	private int Voting4  = 0;//表情4评论数
	private int Voting5  = 0;//表情5评论数
	private int Voting6  = 0;//表情6评论数
	private int Voting7  = 0;//表情7评论数
	private int Voting8  = 0;//表情8评论数
	private Date createtime;//创建时间
	private String Spare=" "; //暂时不知道是干啥的
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getArtId() {
		return artId;
	}
	public void setArtId(Long artId) {
		this.artId = artId;
	}
	public int getVoting1() {
		return Voting1;
	}
	public void setVoting1(int voting1) {
		Voting1 = voting1;
	}
	public int getVoting2() {
		return Voting2;
	}
	public void setVoting2(int voting2) {
		Voting2 = voting2;
	}
	public int getVoting3() {
		return Voting3;
	}
	public void setVoting3(int voting3) {
		Voting3 = voting3;
	}
	public int getVoting4() {
		return Voting4;
	}
	public void setVoting4(int voting4) {
		Voting4 = voting4;
	}
	public int getVoting5() {
		return Voting5;
	}
	public void setVoting5(int voting5) {
		Voting5 = voting5;
	}
	public int getVoting6() {
		return Voting6;
	}
	public void setVoting6(int voting6) {
		Voting6 = voting6;
	}
	public int getVoting7() {
		return Voting7;
	}
	public void setVoting7(int voting7) {
		Voting7 = voting7;
	}
	public int getVoting8() {
		return Voting8;
	}
	public void setVoting8(int voting8) {
		Voting8 = voting8;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getSpare() {
		return Spare;
	}
	public void setSpare(String spare) {
		Spare = spare;
	}
	
}
