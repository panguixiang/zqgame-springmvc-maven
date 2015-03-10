package com.zqgame.util;

/**
 * 
 * 创建人：黄彦军 <br>
 * 创建时间：2013-3-6 <br>
 * 功能描述：日志工具类 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 * 修改记录 <br>
 * ====================================== <br>
 * 序号 姓名 日期 版本 简单描述 <br>
 * 
 */
public class LogUtil {
	public static final String LOG_SPLIT = ",";

	public static String getLogStr(Object... params) {
		StringBuffer sb = new StringBuffer();
		for (Object par : params) {
			if (par == null) {
				sb.append(" " + LOG_SPLIT);
			} else {
				sb.append(par.toString() + LOG_SPLIT);
			}
		}
		return sb.toString();
	}

}
