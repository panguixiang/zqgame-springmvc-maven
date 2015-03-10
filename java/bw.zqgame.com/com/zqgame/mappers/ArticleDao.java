package com.zqgame.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zqgame.models.Article;


/**
 * 新闻管理Dao
 * @author panguixiang
 *
 */
public interface ArticleDao {

    /**
     * 插入article数据
     * @param article
     */
	public void save(@Param("article") Article article);
	
	/**
	 * 修改article
	 * @param article
	 */
	public void update(@Param("article") Article article);
	
	/**
	 * 查询最新的n条article纪录
	 * @param artypeId
	 * @return
	 */
	public List<Map> articleList(@Param("map") Map<String, Object> map); 
	
	/**
	 * 依据id主键查询article对象
	 * @param id
	 * @return
	 */
	public Article getArticleById(@Param("id") Long id);
	
	/**
	 * 根据Id删除新闻记录
	 * @param id
	 */
	public void deleteArticleById(@Param("id") Long id);
	
	/**
	 * 根据新闻类别表中大类别Id查询新闻列表
	 * @param id
	 * @return
	 */
	public List<Map> articleByMap(@Param("map") Map<String, Object> map);
	
	/**
	 * 查询一条最新头条新闻 优先级为10
	 * @return
	 */
	public Article topNews();
	
	/**
	 * 依据dirName分页查询新闻纪录
	 * @param map
	 * @return
	 */
	public List<Map> articlePage(@Param("map") Map<String, Object> map);
}
