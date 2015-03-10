package com.zqgame.mappers;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.Voting;

/**
 * 新闻评价Mapper
 * @author panguixiang
 *
 */
public interface VotingDao {

	/**
	 * 添加新闻评价
	 * @param voting
	 */
	public void save(@Param("voting") Voting voting);
	
	/**
	 * 修改新闻评价
	 * @param voting
	 */
	public void update(@Param("voting") Voting voting);
	
	/**
	 * 根据新闻Id查询此新闻评价信息
	 * @param artId
	 */
	public Voting getVotingByArtId(@Param("artId") Long artId);
}
