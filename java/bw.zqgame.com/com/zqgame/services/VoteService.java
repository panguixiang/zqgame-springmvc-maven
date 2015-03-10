package com.zqgame.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.zqgame.mappers.VoteDao;
import com.zqgame.models.Vote;

/**
 * 问卷调查 service   天道
 * @author panguixiang
 *
 */
public class VoteService {

	@Autowired
	private VoteDao voteDao;
	
	public Vote getVote() {
		return voteDao.getVote();
	}
}
