package com.zqgame.common;

import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.spi.LoggingEvent;

/**
 * 
 * 创建人：黄彦军 <br>
 * 创建时间：2013-3-14 <br>
 * 功能描述：自定义的Log Appende <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 * 修改记录 <br>
 * ====================================== <br>
 * 序号 姓名 日期 版本 简单描述 <br>
 * 
 */
public class CustomizeLogAppender extends AppenderSkeleton {

	@Override
	protected void append(LoggingEvent event) {
		// TODO 要修改
		System.out.println("CustomizeLogAppender ：" + event.getLevel() + " : " + event.getMessage());
	}

	public void close() {
		// TODO Auto-generated method stub
	}

	public boolean requiresLayout() {
		// TODO Auto-generated method stub
		return false;
	}

}
