package com.zqgame.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.VotingDao;
import com.zqgame.models.Voting;
/**
 * voting服务层（新闻,活动,资料访问量统计信息服务层）
 * @author panguixiang
 *
 */
@Service
public class VotingService {

	@Autowired
	private VotingDao votingDao;
	
	/**
	 * 给新闻添加评论
	 * @param voting
	 */
	public void save(Voting voting) {
		votingDao.save(voting);
	}

	/**
	 * 修改新闻评论
	 * @param voting
	 */
	public void update(Voting voting) {
		votingDao.update(voting);
	}

	/**
	 * 根据新闻ID查询此条新闻评论信息
	 * @param artId
	 * @return
	 */
	public Voting getVotingByArtId(Long artId) {
		return votingDao.getVotingByArtId(artId);
	}
}
