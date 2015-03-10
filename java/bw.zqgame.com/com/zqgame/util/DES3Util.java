package com.zqgame.util;

import java.io.ByteArrayOutputStream;
import java.net.URLEncoder;
import java.security.Security;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.bouncycastle.jce.provider.BouncyCastleProvider;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * @version 1.0 功能 ：釆用3DES标准以模式为ECB、填充方式为PKCS7加密数据
 */
public class DES3Util {
	private static String hexString = "0123456789abcdef";
	private Cipher cipher = null;
	// base64编码
	private BASE64Encoder base64Encode = new BASE64Encoder();
	private BASE64Decoder base64Decode = new BASE64Decoder();
	// 密钥
	private String key = "";
	// 过滤换行
	private boolean filter = true;

	public String getKey() {
		return key;
	}

	public boolean getFilter() {
		return filter;
	}

	/**
	 * 设置密钥
	 * 
	 * @param key
	 */
	public void setKey(String key) {
		this.key = key;
	}

	public void setFilter(boolean filter) {
		this.filter = filter;
	}

	private final Cipher initCipher(int mode) {
		try {
			// 添加新安全算法:PKCS7
			Security.addProvider(new BouncyCastleProvider());

			String algorithm = "DESede/ECB/PKCS7Padding";
			SecretKey desKey = new SecretKeySpec(key.getBytes("ASCII"), algorithm);

			Cipher tcipher = Cipher.getInstance(algorithm);
			tcipher.init(mode, desKey);
			return tcipher;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 加密以charset编码做为密文
	 * 
	 * @param src
	 *            明文
	 * @param charset
	 *            编码,例：UTF8、BASE64
	 * @return
	 */
	public String encrypt(String src, String charset) {
		try {
			return URLEncoder.encode(encrypt(src), charset);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 解密
	 * 
	 * @param src
	 *            二进制数组
	 * @return
	 * @throws Exception
	 */
	private byte[] decrypt(byte[] src) throws Exception {
		cipher = initCipher(Cipher.DECRYPT_MODE);
		return cipher.doFinal(src);
	}

	/**
	 * 解密
	 * 
	 * @param src
	 *            密文
	 * @return
	 * @throws Exception
	 */
	public String decrypt(String src) throws Exception {
		byte[] bt = base64Decode.decodeBuffer(src);
		byte[] sbt = decrypt(bt);
		return new String(sbt, "ASCII");
	}

	/**
	 * 加密以base64做为密文
	 * 
	 * @param src
	 *            明文
	 * @return 密文
	 */
	public String encrypt(String src) {
		cipher = initCipher(Cipher.ENCRYPT_MODE);
		byte[] dd = encrypt(src.getBytes());
		String str = base64Encode.encode(dd);
		str = str.replaceAll("\r", "");
		str = str.replaceAll("\n", "");
		return str;
	}

	/**
	 * 
	 * @param src
	 * @return
	 */
	public byte[] encrypt(byte[] src) {
		try {
			return cipher.doFinal(src);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String des3Encrypt(String key, String value) {
		DES3Util cWebService3DES = new DES3Util();
		// Security.addProvider(new com.sun.crypto.provider.SunJCE());
		cWebService3DES.key = key;
		String str = cWebService3DES.encrypt(value);
		return str;
	}

	public static String des3Decrypt(String key, String value) {
		DES3Util cWebService3DES = new DES3Util();
		// Security.addProvider(new com.sun.crypto.provider.SunJCE());
		cWebService3DES.key = key;
		String str = "";
		try {
			str = cWebService3DES.decrypt(value);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	/**
	 * 3des加密后转成16进制
	 * 
	 * @param key
	 * @param str
	 * @return
	 */
	public static String des3ToHexencode(String key, String str) {
		str = des3Encrypt(key, str);
		// 根据默认编码获取字节数组
		byte[] bytes = str.getBytes();
		StringBuilder sb = new StringBuilder(bytes.length * 2);
		// 将字节数组中每个字节拆解成2位16进制整数
		for (int i = 0; i < bytes.length; i++) {
			sb.append(hexString.charAt((bytes[i] & 0xf0) >> 4));
			sb.append(hexString.charAt((bytes[i] & 0x0f) >> 0));
		}
		return sb.toString();
	}

	/**
	 * 16进制数解码后3des解密
	 * 
	 * @param key
	 * @param bytes
	 * @return
	 */
	public static String des3ToHexdencode(String key, String bytes) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream(bytes.length() / 2);
		// 将每2位16进制整数组装成一个字节
		for (int i = 0; i < bytes.length(); i += 2) {
			baos.write((hexString.indexOf(bytes.charAt(i)) << 4 | hexString.indexOf(bytes.charAt(i + 1))));
		}
		String str = new String(baos.toByteArray());
		return des3Decrypt(key, str);
	}

	public static void main(String[] args) throws Exception {
		String s = "123";
		String key = "lyMlB6YUSXCdURnQKoigJnSH";
		System.out.println("3des加密后："+des3Encrypt(key, s));
		System.out.println("十六进制：" + des3ToHexencode(key, s));
		s = des3ToHexencode(key, s);
		System.out.println("a解密后：" + des3ToHexdencode(key, s));
	}
}
