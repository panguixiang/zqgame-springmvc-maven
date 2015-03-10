package com.zqgame.interceptors;

import java.io.File;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;
import net.sf.json.JSONObject;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import com.zqgame.common.Constant;


/**
 * 拦截StatementHandler里的 prepare方法把执行的sql进行记录到文件里
 * @author panguixiang
 *
 */
@Intercepts({ @Signature(type = StatementHandler.class, method = "prepare", args = { Connection.class }) })
public class MyBatisSQLInterceptor implements Interceptor {

	public Object intercept(Invocation invocation) throws Throwable {
		StatementHandler statementHandler = (StatementHandler) invocation
				.getTarget();
		MetaObject metaStatementHandler = MetaObject
				.forObject(statementHandler);
		String originalSql = (String) metaStatementHandler
				.getValue("delegate.boundSql.sql");
		HashMap<String, String> mapParam = (HashMap<String, String>) metaStatementHandler
		.getValue("delegate.boundSql.parameterObject");
		File sqlFile = null;
		List<String> lines = null;
		sqlFile = new File(Constant.SQLFILE.concat(
				DateFormatUtils.format(new Date(), "yyyyMMdd")).concat(
				"-sql.txt"));
		lines = new ArrayList<String>();
		lines.add(originalSql.replaceAll("\n", "").replaceAll("\t", " ")
				.replaceAll(" +", " "));
		JSONObject jsonObject = JSONObject.fromObject(mapParam);
		lines.add(jsonObject.toString());
		FileUtils.writeLines(sqlFile, "utf-8", lines, true);
		return invocation.proceed();
	}

	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	public void setProperties(Properties properties) {
		// TODO Auto-generated method stub

	}
	  
}
