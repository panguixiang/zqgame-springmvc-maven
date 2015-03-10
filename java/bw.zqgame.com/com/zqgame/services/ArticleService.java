package com.zqgame.services;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zqgame.mappers.ArticleDao;
import com.zqgame.mappers.ArticleTypeDao;
import com.zqgame.models.Article;
import com.zqgame.models.ArticleType;

/**
 * 新闻服务层
 * @author panguixiang
 *
 */
@Service("ArticleService")
public class ArticleService {

	@Autowired
	private ArticleDao articleDao;
	
	@Autowired
	private ArticleTypeDao articleTypeDao;
	
	/**
	 * 添加新闻
	 * @param article
	 */
	public Article saveArticle(Article article) {
			articleDao.save(article);
		    return article;
	}
	
    /**
     * 修改新闻
     * @param article
     */
	public void updateArticle(Article article) {
		articleDao.update(article); 
	}
	
	/**
	 * 主键查询article对象
	 * @param id
	 * @return
	 */
	public Article getArticleById(Long id) {
		return articleDao.getArticleById(id);
	}
	
	/**
	 * 根据Id删除新闻对象
	 * @param id
	 */
	public void deleteArticleById(Long id) {
		articleDao.deleteArticleById(id);
	}
	
	/**
	 * 添加新闻类别
	 * @param articleType
	 * @return
	 */
	public ArticleType saveArticleType(ArticleType articleType) {
		articleTypeDao.save(articleType);
		return articleType;
	}
	
	/**
	 * 依据dirName查询出articleType里的新闻子类别列表
	 * @param dirName
	 * @return
	 */
	public List<ArticleType> articleTypeListByDirName(String dirName) {
		return articleTypeDao.articleTypeListByDirName(dirName);
	}
	
	/**
	 * 依据dirName查询出单个新闻类别
	 * @param dirName
	 * @return
	 */
	public ArticleType getArticleTypeByDirName(String dirName) {
		return articleTypeDao.getArticleTypeByDirName(dirName);
	}
	
	/**
	 * 根据Id查询新闻类别表里的单个新闻类别
	 * @param id
	 * @return
	 */
	public ArticleType getArticleTypeById(Long id) {
		return articleTypeDao.getArticleTypeById(id);
	}
	
	/**
	 * 查询最新的n条article纪录
	 * @param artypeId
	 * @return
	 */
	public List<Map> articleList(Map<String, Object> map) {
		return articleDao.articleList(map);
	}
	
	/**
	 * 根据子类Id查询大类对象
	 * @param id
	 * @return
	 */
	public ArticleType fatherArticleTypeBySonId(Long id) {
		return articleTypeDao.fatherArticleTypeBySonId(id);
	}
	/**
	 * 依据ParentId查询出新闻类别列表
	 * @param id
	 * @return
	 */
	public List<ArticleType> articleTypeListByParentId(Long id) {
		return articleTypeDao.articleTypeListByParentId(id);
	}
	
	/**
	 * 依据dirName查询n条新闻纪录
	 * @param map
	 * @return
	 */
	public List<Map> articleByMap(Map<String, Object> map) {
		return articleDao.articleByMap(map);
	}
	
	/**
	 * 查询一条最新头条新闻 优先级为10
	 * @return
	 */
	public Article topNews() {
		return articleDao.topNews();
	}
	
	/**
	 * 依据dirName分页查询新闻纪录
	 * @param map
	 * @return
	 */
	public List<Map> articlePage(Map<String, Object> map) {
		return articleDao.articlePage(map);
	}
}
