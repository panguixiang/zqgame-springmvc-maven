package bwTest.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zqgame.models.ArticleType;
import com.zqgame.services.ArticleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"/mybatis.xml","/spring-root-context.xml"}) //加载配置文件
public class ArticleServiceTest {

	 @Autowired
	 ArticleService testService;
	
	 @Test
	 public void testSaveArticle() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("begin", 1);
		map.put("end", 5);
		@SuppressWarnings("rawtypes")
		List<Map> returnList = testService.articleList(map);
		for(Map map2: returnList) {
			System.out.println(map2.get("artId"));
			System.out.println(map2.get("artTypeId"));
			System.out.println(map2.get("artTitle"));
			System.out.println(map2.get("titlePicPath"));
			System.out.println(map2.get("artPath"));
			System.out.println(map2.get("source"));
			System.out.println(map2.get("author"));
			System.out.println(map2.get("hits"));
			System.out.println(map2.get("templateId"));
			System.out.println(map2.get("artContent"));
			System.out.println(map2.get("artTypeName"));
		}
	 }
	 
	 @Test
	 public void testFatherArticleTypeBySonId() {
		 ArticleType articleType = testService.fatherArticleTypeBySonId(173L);
		 if(articleType == null) {
			 System.out.println("---------null--------");
		 } else {
			 System.out.println(articleType.toString());
		 }
	 }
}
