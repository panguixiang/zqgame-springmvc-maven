package com.zqgame.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.ArticleType;

/**
 * 新闻类别接口
 * @author panguixiang
 *
 */
public interface ArticleTypeDao {

	/**
	 * 插入新闻类别
	 * @param articleType
	 */
	public void save(@Param("articleType") ArticleType articleType);
	/**
	 * 由主键获得新闻类别Ojbect
	 * @param id
	 * @return
	 */
	public ArticleType getArticleTypeById(@Param("id") Long id);
	/**
	 * 由dirName获得新闻类别Object
	 * @param dirName
	 * @return
	 */
	public ArticleType getArticleTypeByDirName(@Param("dirName") String dirName);
    /**
     * 由dirName获得新闻类别子类列表
     * @param dirName
     * @return
     */
	public List<ArticleType> articleTypeListByDirName(@Param("dirName") String dirName);
	
	/**
	 * 依据parentId查询新闻类别表里子类别列表
	 * @param id 父级主键Id
	 * @return
	 */
	public List<ArticleType> articleTypeListByParentId(@Param("id") Long id);
	
	/**
	 * 根据子类Id查询大类对象
	 * @param id
	 * @return
	 */
	public ArticleType fatherArticleTypeBySonId(@Param("id") Long id);
}
