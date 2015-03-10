/**   
 * @Title: digest.java 
 * @Package com.dsg.cccs.utils 
 * @Description: TODO
 * @author proteus modoucc_gmail_com   
 * @date 2011-7-22 下午3:00:12   
 */
package com.zqgame.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.zqgame.common.Constant;

/**
 * 生成静态html,图片上传，生成验证码
 * 
 * @author panguixiang
 * 
 */
public class Digest {

	private static Logger LOG = Logger.getLogger(Digest.class);

	/**
	 * 转化拼接sql字符串，防止sql脚本注入
	 * 
	 * @param str
	 * @return
	 */
	public static String changeStr(String str) {
		str = str.replace("\\", "/");
		str = str.replace("/", "//");
		str = str.replace("'", "''");
		str = str.replace("%", "/%");
		str = str.replace("[", "/[");
		return str.trim();
	}

	/**
	 * 上传文件（图片+并生成缩略图以：原图100*100结尾）
	 * 
	 * @param fileRealPath
	 * @param uploadFile
	 * @return
	 */
	public static String saveFile(MultipartFile multFile, String filePathFile,
			int returnType) throws IOException {

		String imageName = UUID.randomUUID().toString();
		String suffix = FilenameUtils.getExtension(multFile
				.getOriginalFilename());
		String bigfilePath = FilenameUtils.concat("fileupload", FilenameUtils
				.concat(filePathFile, imageName.concat(".").concat(suffix)));
		/**
		 * 上传原图
		 */
		File bigFile = new File(FilenameUtils.concat(Constant.PICTURE_PATH,
				bigfilePath));
		FileOutputStream bigfs = FileUtils.openOutputStream(bigFile);
		bigfs.write(multFile.getBytes());
		bigfs.close();
		/**
		 * 上传缩略图
		 */
		// 文件存储的相对路径
		String saveDirPath = FilenameUtils.concat("fileupload", filePathFile);
		// 文件存储在容器中的绝对路径
		BufferedImage image = ImageIO.read(multFile.getInputStream());
		String saveFilePath = FilenameUtils.concat(
				saveDirPath,
				imageName
						.concat(Constant.THUMBNAIL_WEIGHT.concat("X").concat(
								Constant.THUMBNAIL_HEIGHT)).concat(".")
						.concat(suffix));
		ImageIO.write(ResizeImage.resizeImage(image,
				Integer.parseInt(Constant.THUMBNAIL_WEIGHT),
				Integer.parseInt(Constant.THUMBNAIL_HEIGHT)), suffix, new File(
				FilenameUtils.concat(Constant.PICTURE_PATH, saveFilePath)));

		/**
		 * 1 返回原图路径，其他返回缩略图路径
		 */
		if (returnType == 1) {
			return bigfilePath;
		} else {
			return saveFilePath;
		}
	}

	public static BufferedImage createCataImage(HttpServletRequest request) {
		int x = 0;
		// 设置验证码图片中显示的字体高度
		int fontHeight;
		int codeY;
		// 在这里定义了验证码图片的宽度
		int width = 60;
		// 定义验证码图片的高度。
		int height = 20;
		// 定义验证码f字符个数，此处设置为5位
		int codeNum = 4;
		char[] codeSequence = { '2', '3', '4', '5', '6', '7', '8', '9', 'A',
				'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'M', 'N', 'P',
				'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b',
				'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q',
				'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };

		/**
		 * 对验证图片属性进行初始化
		 */
		// 从部署文件web.xml中获取程序初始化信息，图片宽度跟高度，字符个数信息
		// 获取初始化字符个数
		String strCodeNums = "4";
		// 获取验证码图片宽度参数
		String strW = "80";
		// 获取验证码图片高度参数
		String strH = "20";
		// 将配置的字符串信息转换成数值类型数字
		try {
			if (strH != null && strH.length() != 0) {
				height = Integer.parseInt(strH);
			}
			if (strW != null && strW.length() != 0) {
				width = Integer.parseInt(strW);
			}
			if (strCodeNums != null && strCodeNums.length() != 0) {
				codeNum = Integer.parseInt(strCodeNums);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
			System.out.println("----验证码生成错误!---");
		}
		x = width / (codeNum + 1);
		fontHeight = height - 2;
		codeY = height - 4;

		// 定义验证码图像的缓冲流
		BufferedImage buffImg = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 产生图形上下文
		Graphics2D g = buffImg.createGraphics();

		// 创建随机数产生函数
		Random random = new Random();

		// 将验证码图像背景填充为白色
		g.setColor(Color.white);
		g.fillRect(0, 0, width, height);

		// 创建字体格式，字体的大小则根据验证码图片的高度来设定。
		Font font = new Font("Fixedsys", Font.PLAIN, fontHeight);
		// 设置字体。
		g.setFont(font);

		// 为验证码图片画边框，为一个像素。
		g.setColor(Color.pink);
		g.drawRect(0, 0, width - 1, height - 1);

		// 随机生产2跳图片干扰线条，使验证码图片中的字符不被轻易识别
		g.setColor(Color.BLACK);
		for (int i = 0; i < 2; i++) {
			int l = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(l, y, l + xl, y + yl);
		}

		// randomCode保存随机产生的验证码
		StringBuffer randomCode = new StringBuffer();

		// 定义颜色三素
		int red = 0;

		// 随机生产codeNum个数字验证码
		for (int i = 0; i < codeNum; i++) {
			// 得到随机产生的验证码
			String strRand = String.valueOf(codeSequence[random.nextInt(54)]);
			// 使用随机函数产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同。
			red = random.nextInt(255);
			/*
			 * green = random.nextInt(255); blue = random.nextInt(255);
			 */

			// 用随机产生的颜色将验证码绘制到图像中。
			g.setColor(new Color(red));
			g.drawString(strRand, (i + 1) * x, codeY);

			// 将产生的四个随机数组合在一起。
			randomCode.append(strRand);
		}
		// 将生产的验证码保存到Session中

		HttpSession session = request.getSession();
		session.setAttribute(Constant.CAPTCHA, randomCode.toString());
		return buffImg;
	}

	public static void deleteFile(HttpSession session, String fileUrl) {
		if (!StringUtils.isEmpty(fileUrl)) {
			/**
			 * 删除图片
			 */
			File fileTemp = new File(session.getServletContext()
					.getRealPath("").concat(fileUrl));
			// 判断路径是否存在并且不是个文件夹
			if (fileTemp.exists() && !fileTemp.isDirectory()) {
				fileTemp.delete();
			}
		}
	}

	public static boolean isAcceptedFileType(String fileFileName) {
		if (!StringUtil.isNull(fileFileName)) {
			if (fileFileName.endsWith(".jpg") || fileFileName.endsWith(".bmp")
					|| fileFileName.endsWith(".gif")
					|| fileFileName.endsWith(".png")) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 获得MAP地址
	 * 传进来的ip不能为localhost或127.0.0.1 必须是真实的IP
	 * @param ip
	 * @return
	 */
	public static String getMACAddress(String ip){
        String str = "";
        String macAddress = "";
        try {
            Process p = Runtime.getRuntime().exec("nbtstat -A " + ip);
            InputStreamReader ir = new InputStreamReader(p.getInputStream());
            LineNumberReader input = new LineNumberReader(ir);
            for (int i = 1; i < 100; i++) {
                str = input.readLine();
                if (str != null) {
                    if (str.indexOf("MAC Address") > 1) {
                        macAddress = str.substring(str.indexOf("MAC Address") + 14, str.length());
                        break;
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace(System.out);
        }
        return macAddress;
    }
	
	/**
	 * 构造最终快速注册请求url
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public static String quickRegisterFinalUrl(HttpServletRequest request)
			throws Exception {
		String accountName = request.getParameter("username");
		String password = request.getParameter("password");
		String realName = request.getParameter("realName");
		String card = request.getParameter("card");
		String szSrc = request.getParameter("szSrc");
		String posterSource = request.getParameter("ad");
		String spreadImageId = request.getParameter("spreadImageId");
		String mobile = request.getParameter("mobile");

		LOG.info(LogUtil.getLogStr(
				Constant.GAMEWEB.concat("构造官网快速注册请求URL所用参数信息:"), "登录帐号="
						+ accountName, "登录密码=" + password, "实名姓名=" + realName,
				"身份证号=" + card, "来源URL链接=" + szSrc, "广告来源=" + posterSource,
				"推广图片ID=" + spreadImageId, "手机号=" + mobile));
		List<String> urlArray = new ArrayList<String>();
		urlArray.add(Constant.QUICK_REGISTER);
		// accountname 必填，登录帐号(4 - 32位，只能是数字、字母、下划线)
		if (StringUtils.isEmpty(accountName)) {
			return "";
		}
		urlArray.add(accountName);
		// password 必填，密码(md5加密后再大写)
		if (StringUtils.isEmpty(password)) {
			return "";
		}
		String md5password = DigestUtils.md5Hex(password).toUpperCase();
		urlArray.add(md5password);

		// realnameinfo 选填，实名信息(真实姓名:身份证号码)这个字段使用UTF-8编码
		String realnameinfo = null;
		if (StringUtils.isEmpty(realName) || StringUtils.isEmpty(card)) {
			realnameinfo = null;
		} else {
			realnameinfo = URLEncoder.encode(realName.concat(":").concat(card),
					"UTF-8");
			urlArray.add(realnameinfo);
		}
		// adverinfo 注册来源广告信息(广告来源:来源URL链接:推广图片ID) 广告来源、推广图片ID：没有时填 0
		// 来源URL链接：必填(如果没有则为rw)，格式：来源URL + “_游戏名称简写(字母格式)”
		// 来源URL链接需要3des加密,再转成16进制
		/*
		 * final byte[] keyBytes = DESUtil
		 * .StringToByte(Constant.DESC_KEY.substring(0, 24), "utf-8");
		 */
		if (StringUtils.isEmpty(szSrc)) {
			szSrc = "rw_bw";
		}
		if (StringUtils.isEmpty(posterSource)) {
			posterSource = "0";
		}
		if (StringUtils.isEmpty(spreadImageId)) {
			spreadImageId = "0";
		}
		String adverinfo = posterSource
				.concat(":")
				.concat(DES3Util.des3ToHexencode(
						Constant.DESC_KEY.substring(0, 24), szSrc)).concat(":")
				.concat(spreadImageId);
		urlArray.add(adverinfo);
		// playerip 选填，玩家IP地址
		String ipAddress = request.getHeader("X-Real-IP");
		urlArray.add(ipAddress);
		// plantformid 必填，平台ID（中青宝API平台分配）或游戏ID
		urlArray.add(Constant.PLANTFORMID);
		// remark 必填，预留，填 "0"，如果注册时有玩家手机号码信息，请使用这个字段传递过来
		if (StringUtils.isEmpty(mobile)) {
			mobile = "0";
		}
		urlArray.add(mobile);
		// systemparams：系统参数，由version，apikey，timestamp三个参数组成
		String systemParams = Constant.VERSION_API.concat(":")
				.concat(Constant.APIKEY).concat(":")
				.concat(System.currentTimeMillis() * 1000 + "");
		urlArray.add(systemParams);
		// m_sign：参数签名值，将所有请求参数和secretkey的MD5加密串，加密后转小写
		String md5Url = null;
		if (realnameinfo == null) {
			md5Url = accountName + md5password + adverinfo + ipAddress
					+ Constant.PLANTFORMID + mobile + systemParams
					+ Constant.DESC_KEY;
		} else {
			md5Url = accountName + md5password + realnameinfo + adverinfo
					+ ipAddress + Constant.PLANTFORMID + mobile + systemParams
					+ Constant.DESC_KEY;
		}

		String m_sign = DigestUtils.md5Hex(md5Url).toLowerCase();
		urlArray.add(m_sign);
		return StringUtils.join(urlArray, "/");
	}

	/**
	 * 拼接校验注册账号重复性
	 * 
	 * @param request
	 * @return
	 */
	public static String checkUserNameExistUrl(String accountName) {

		List<String> urlArray = new ArrayList<String>();
		urlArray.add(Constant.EXIST_USERNAME);
		// accountname 必填，登录帐号(4 - 32位，只能是数字、字母、下划线)
		if (StringUtils.isEmpty(accountName)) {
			return "";
		}
		/* finalUrl = finalUrl.concat(accountName); */
		urlArray.add(accountName);
		// accountype 数字 通行证帐号类型(中青宝默认为0)
		String accountype = Constant.ACCOUNTYPE;
		urlArray.add(Constant.ACCOUNTYPE);
		// plantformid 必填，平台ID（中青宝API平台分配）或游戏ID
		urlArray.add(Constant.PLANTFORMID);
		// remark 必填，预留，填 "0"，如果注册时有玩家手机号码信息，请使用这个字段传递过来
		String mobile = "0";
		urlArray.add(mobile);
		// systemparams：系统参数，由version，apikey，timestamp三个参数组成
		String systemParams = Constant.VERSION_API.concat(":")
				.concat(Constant.APIKEY).concat(":")
				.concat(System.currentTimeMillis() * 1000 + "");
		urlArray.add(systemParams);
		// m_sign：参数签名值，将所有请求参数和secretkey的MD5加密串，加密后转小写
		String m_sign = DigestUtils.md5Hex(
				accountName + accountype + Constant.PLANTFORMID + mobile
						+ systemParams + Constant.DESC_KEY).toLowerCase();
		urlArray.add(m_sign);
		return StringUtils.join(urlArray, "/");
	}

	/**
	 * 构造登录请求url
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public static String loginUrl(HttpServletRequest request) throws Exception {
		String logName = request.getParameter("logName");
		String passWord = request.getParameter("passWord");
		List<String> urlArray = new ArrayList<String>();
		urlArray.add(Constant.GAMELOGINURL);
		
		// 登录帐号(4 - 32位，只能是数字、字母、下划线)
		LOG.info(LogUtil.getLogStr(Constant.GAMEWEB.concat("构造登录请求url："),
				"登录帐号=" + logName, "登录密码=" + passWord));
		// accountname 必填，登录帐号(4 - 32位，只能是数字、字母、下划线)
		if (StringUtils.isEmpty(logName)) {
			return "";
		}
		urlArray.add(logName);

		// 帐号类型（中青宝默认帐号类型：001）
		urlArray.add(Constant.LOGINACCOUNTYPE);

		// 登录密码(MD5加密) 32 位
		String md5password = DigestUtils.md5Hex(passWord).toUpperCase();
		urlArray.add(md5password);
		// 平台ID（中青宝API平台分配）
		urlArray.add(Constant.PLANTFORMID);
		// string remark = "0"; //预留，填 "0"
		String remark = "0";
		urlArray.add(remark);
		// systemparams：系统参数，由version，apikey，timestamp三个参数组成
		String systemParams = Constant.VERSION_API.concat(":")
				.concat(Constant.APIKEY).concat(":")
				.concat(System.currentTimeMillis() * 1000 + "");
		urlArray.add(systemParams);
		String md5Url = logName + Constant.LOGINACCOUNTYPE + md5password
				+ Constant.PLANTFORMID + "0" + systemParams + Constant.DESC_KEY;
		String m_sign = DigestUtils.md5Hex(md5Url).toLowerCase();
		urlArray.add(m_sign);
		return StringUtils.join(urlArray, "/");
	}
}
