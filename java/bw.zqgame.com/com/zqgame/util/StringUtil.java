package com.zqgame.util;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.lang.StringUtils;

/**
 * 
 * 功能描述：字符串操作工具类 <br>
 * 版本： <br>
 * 版权拥有：深圳中青宝互动网络股份有限公司 <br>
 * ====================================== <br>
 *               修改记录 <br>
 * ====================================== <br>
 *  序号    姓名      日期      版本           简单描述 <br>
 *
 */
public class StringUtil {

	/**
	 * 判断字符串是否为空
	 * 只要有一个参数为空则为空
	 * 
	 * @param values
	 * @return
	 */
	public static boolean isNull(String... values) {
		if (values == null || values.length == 0) {
			return true;
		}

		for (String value : values) {
			if (value == null || "".equals(value.trim())) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 判断对象是否为空
	 * 只要有一个参数为空则为空
	 * 
	 * @param values
	 * @return
	 */
	public static boolean isNull(Object... objs) {
		if (objs == null || objs.length == 0) {
			return true;
		}

		for (Object obj : objs) {
			if (obj == null || "".equals(obj)) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * @description 生成指定位数的随机数
	 * @param length
	 * @return String
	 */
	public static String getRandomDigit(int length) {
		StringBuffer rs = new StringBuffer();
		int i = 0;	
		Random random = new Random();
		while (i < length) {
			rs.append(random.nextInt(9));
			i++;
		}
		return rs.toString();
	}
	
	/**
	 * @description 生成指定位数的字符串
	 * @param length
	 * @return String
	 */
	public static String getRandomString(int n) {
		String[] s = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
				"t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
		String rs = "";
		int i = 0;
		Random r = new Random();
		while (i < n) {
			int j = r.nextInt(s.length);
			rs += s[j];
			i++;
		}
		return rs;
	}
	
	/**
     * @description 本方法将字符串按 ,号分隔
	 * @param str
	 * @return String[]
     */
    public static String[] parse(String str)
    {
        if(isNull(str))
        {
            return null;
        }
        
        String[] strs = str.split(",");
        String[] arrs = new String[strs.length];
        for(int i = 0; i < strs.length; i++)
        {
            arrs[i] = strs[i].trim();
        }
        return arrs;
    }
    
    /**
     * @description 判断字符串是否是数字
	 * @param iNumber
	 * @return String
     */
    public static boolean isNumber(String iNumber) {
		if (iNumber == null)
			return false;
		for (int i = 0; i < iNumber.length(); i++) {
			if (iNumber.charAt(i) < '0' || iNumber.charAt(i) > '9')
				return false;
		}
		return true;
	}
    
    /**
     * @description 数字字符串转成double型
	 * @param iNumber
	 * @return String
     */
    public static String formatDouble(String iNumber) {
		DecimalFormat decFormat;
		String sFormat = "#,##0.00";
		String sNumber = "";
		try {
			decFormat = new DecimalFormat(sFormat);
			sNumber = decFormat.format(Double.parseDouble(iNumber));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sNumber;
	}

    /**
     * @description 数字字符串转为2位小数的字符串
	 * @param iNumber
	 * @return String
     */
	public static String formatMoney(String iNumber) {
		DecimalFormat decFormat;
		String sFormat = "####.00";
		String sNumber = "";
		try {
			decFormat = new DecimalFormat(sFormat);
			sNumber = decFormat.format(Double.parseDouble(iNumber));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sNumber;
	}
    
    /**
     * @description 将原字符串指定的字符替换为指定的字符串
	 * @param oldStr
	 * @param searchStr
	 * @param replaceStr
	 * @return String
     */
    public static String stringReplace(String oldStr, String searchStr, String replaceStr) {
		String outStr = "";
		int iPos = 0;
		int iLen = searchStr.length();

		if (isNull(oldStr,searchStr)) {
			return oldStr;
		}

		iPos = oldStr.indexOf(searchStr);

		while (iPos != -1) {
			outStr += oldStr.substring(0, iPos) + replaceStr;
			iPos += iLen;
			if (oldStr.length() >= iPos) {
				oldStr = oldStr.substring(iPos);
				iPos = oldStr.indexOf(searchStr);
			}
		}
		outStr += oldStr;
		return outStr;
	}
    
    /**
	 * 将原字符串指定范围的字符替换为指定的字符串。<br/>
	 * 起始位置或结束位置违反约束，则返回原字符串。
	 * 
	 * @param value
	 *            原字符串
	 * @param replacement
	 *            替换字符的字符串，如果为null则默认为*
	 * @param start
	 *            起始位置，从0开始（包括当前位置）
	 * @param end
	 *            结束位置，从0开始（不包括当前位置）
	 * @return
	 */
	public static String replace(String value, String replacement, int start, int end) {
		if (StringUtils.isEmpty(value))
			return value;

		if (start < 0 || end < 0 || start >= end)
			return value;

		int size = value.length();
		if (start > (size - 1) || end > size)
			return value;

		if (replacement == null)
			replacement = "*";

		// 第一个需要替换字符的前面字符串
		String before = StringUtils.substring(value, 0, start);
		// 指定范围内字符串替换后大小
		int replacedSize = replacement.length() * (end - start);

		StringBuilder sb = new StringBuilder();
		sb.append(StringUtils.rightPad(before, (before.length() + replacedSize), replacement));
		sb.append(StringUtils.substring(value, end));

		return sb.toString();
	}
    
	/**
	 * 把Map所有元素排序，并按照“参数=参数值”的模式用“&”字符拼接成字符串
	 * 
	 * @param params
	 *            需要排序并参与字符拼接的参数组
	 * @return 拼接后字符串
	 */
	public static String createLinkString(Map<String, String> params) {
		List<String> keys = new ArrayList<String>(params.keySet());
		Collections.sort(keys);

		String prestr = "";

		for (int i = 0; i < keys.size(); i++) {
			String key = (String) keys.get(i);
			String value = params.get(key);

			if (i == keys.size() - 1) {// 拼接时，不包括最后一个&字符
				prestr = prestr + key + "=" + value;
			} else {
				prestr = prestr + key + "=" + value + "&";
			}
		}

		return prestr;
	}

	/**
	 * 转换Msp的值.Map<String, String[]> to Map<String, String>
	 * 
	 * @param Map
	 *            <String, String[]>
	 * @return Map<String, String>
	 */
	public static Map<String, String> mapValueArray2String(Map<String, String[]> map) {
		Map<String, String> params = new HashMap<String, String>();
		for (Iterator<String> iter = map.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) map.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			params.put(name, valueStr);
		}
		return params;
	}

	/**
	 * 将Map元素组装成URL形式的字符串
	 * 
	 * @param map
	 * @return
	 */
	public static String map2URLString(Map<String, String[]> map) {
		return createLinkString(mapValueArray2String(map));
	}
	
    public static void main(String[] agrs){
    	String str = stringReplace("abcdefg","a","ef");
    	String str1 = DateUtil.getCurrentDateStr(DateUtil.TIME_FORMAT_MSEL);
    	System.out.println("------------------:"+str1);
    }
}
