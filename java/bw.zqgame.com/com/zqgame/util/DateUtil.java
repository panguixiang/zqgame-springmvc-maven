package com.zqgame.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

/**
 * 
 * 功能描述：日期操作工具类 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public class DateUtil {

	/**
	 * yyyy-MM-dd HH:mm:ss
	 */
	public static final String TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	
	/**
	 * yyyy-MM-dd
	 */
	public static final String DATE_FORMAT = "yyyy-MM-dd";
	
	/**
	 * oracle中日期格式化字符串
	 */
	public static final String TIME_FORMAT_ORACLE = "yyyy-mm-dd hh24:mi:ss";
	/**
	 * yyyyMMdd
	 */
	public static final String DATE_PATTERN = "yyyyMMdd";
	/**
	 * yyyyMMddHHmmss
	 */
	public static final String TIME_PATTERNALL = "yyyyMMddHHmmss";
	
	/**
	 * 日期格式化字符串 到毫秒
	 */
	public static final String TIME_FORMAT_MSEL = "yyyyMMddHHmmssSSS";
	
	/**
	 * 获取服务器当前日期
	 * @return
	 */
	public static Date getCurrentDate() {
		return new Date(System.currentTimeMillis());
	}
	
	/**
	 * 获取服务器当前时间的字符串 ,格式 ：yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String getCurrentDateStr(){
		
		return convertDateToStr(getCurrentDate(), TIME_FORMAT);
	}

	
	/**
	 * 获取服务器当前时间字符串,根据指定格式返回 
	 * @return
	 */
	public static String getCurrentDateStr(String timeFormat)
	{
		return convertDateToStr(getCurrentDate(), timeFormat);
	}
	
	/**
	 * 增加天数
	 * @param date
	 * @param days
	 * @return
	 */
	public static Date addDate(Date date, int days) {
		if (date == null) return date;
		Locale loc = Locale.getDefault();
		GregorianCalendar cal = new GregorianCalendar(loc);
		cal.setTime(date);
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int month = cal.get(Calendar.MONTH);
		int year = cal.get(Calendar.YEAR);
		cal.set(year, month, day + days);
		return cal.getTime();
	}
	
	/**
	 * 将字符串转换为日期格式 
	 * @param dateStr
	 * @param dateFormat
	 * @return
	 */
	public static Date convertStrToDate(String dateStr, String dateFormat) {
		if (dateStr == null || dateStr.equals("")) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		try {
			return sdf.parse(dateStr);
		}
		catch (Exception e) {
			throw new RuntimeException("DateUtil.convertStrToDate():" + e.getMessage());
		}
	}
	
	/**
	 * 
	 * 功能说明： 将日期字符串转换成java.sql.Date类型的日期。 参数及返回值:
	 * 
	 * @param date
	 * @return
	 */
	public static java.sql.Date getStringAsSQLDate(String date, String dateFormat) 
	{
		SimpleDateFormat format = new SimpleDateFormat(dateFormat);
		try {
			return new java.sql.Date(format.parse(date).getTime());
		} catch (ParseException e) {
			return new java.sql.Date(new Date().getTime());
		}
	}
	
	/**
	 * 将日期转换为字符串格式
	 * @param date
	 * @param dateFormat
	 * @return
	 */
	public static String convertDateToStr(Date date, String dateFormat) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		return sdf.format(date);
	}
	
	/**
	 * 给一日期增加一时间
	 * @param timePart HH,mm,ss 
	 * @param number 要增加的时间
	 * @param date 日期对象
	 * @return
	 */
	public static Date addTime(String timePart, int number, Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		if (timePart.equals("HH")) {
			cal.add(Calendar.HOUR, number);
		}
		else if (timePart.equals("mm")) {
			cal.add(Calendar.MINUTE, number);
		}
		else if (timePart.equals("ss")) {
			cal.add(Calendar.SECOND, number);
		}
		else {
			throw new IllegalArgumentException("DateUtil.addDate()方法非法参数值：" + timePart);
		}
		return cal.getTime();
	}
	
	/**
	 * 
	 * 清除指定的时间
	 * @param date
	 * @param timePart HH,mm,ss 
	 * @return
	 */
	public static Date clearTime(Date date,String timePart){
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		if (timePart.equals("HH")) {
			cal.clear(Calendar.HOUR);
		}
		else if (timePart.equals("mm")) {
			cal.clear(Calendar.MINUTE);
		}
		else if (timePart.equals("ss")) {
			cal.clear(Calendar.SECOND);
		}
		else {
			throw new IllegalArgumentException("DateUtil.addDate()方法非法参数值：" + timePart);
		}
		return cal.getTime();
	}
}
