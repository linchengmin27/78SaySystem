package com.lcm.util.file;

import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class StringUtil {

	public static boolean isNotEmpty(String string) {
		return !isEmpty(string);
	}
	
	public static boolean isEmpty(String string) {
		return string == null || string.trim().length() == 0
				|| string.trim().equals("null");
	}

	public static boolean isEmpty(Integer in) {
		return in == null || in == 0;
	}

	public static boolean isEmpty(Double in) {
		return in == null || in == 0;
	}

	public static boolean isEmpty(Long in) {
		return in == null || in == 0;
	}

	public static String getUUID() {
		return UUID.randomUUID().toString();
	}

	public static String getWeekDisplay(int flag) {
		if (flag == 0) {
			return "Mon";
		} else if (flag == 1) {
			return "Tue";
		} else if (flag == 2) {
			return "Wed";
		} else if (flag == 3) {
			return "Thu";
		} else if (flag == 4) {
			return "Fri";
		} else if (flag == 5) {
			return "Sat";
		} else if (flag == 6) {
			return "Sun";
		}
		return "";
	}
	
	public static String getRandCode(int bits) {
		String code = "";
		String strings = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		Random random = new Random();
		for (int i = 1; i <= bits; i++) {
			int randValue = random.nextInt(strings.length());
			code += strings.substring(randValue, randValue + 1);
		}
		return code;
	}

	public static String getOrderNumber() {
		String code = String.valueOf(System.currentTimeMillis());
		String strings = "1234567890";
		Random random = new Random();
		for (int i = 1; i <= 5; i++) {
			int randValue = random.nextInt(strings.length());
			code += strings.substring(randValue, randValue + 1);
		}
		return code;
	}

	public static boolean validEmail(String email) {
		Pattern pattern = Pattern
				.compile("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}

	public static boolean validTelephone(String phone) {
		Pattern pattern = Pattern.compile("^[0-9]{10}$");
		Matcher matcher = pattern.matcher(phone);
		return matcher.matches();
	}

	public static boolean validZipCode(String zipcode) {
		Pattern pattern = Pattern.compile("^[0-9]{5}$");
		Matcher matcher = pattern.matcher(zipcode);
		return matcher.matches();
	}

	public static String getRandomNums(int num) {
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < num; i++) {
			sb.append(random.nextInt(9));
		}
		return sb.toString();
	}

	public static String turnNullToEmpty(String string) {
		if (string == null) {
			return "";
		} else {
			return string;
		}
	}
	
	/**
	 * 加密
	 * 
	 * @param as_pwd
	 * @return
	 */
	
	public static String encrypt(String as_pwd) {
		String newStr = "";
		String ls_pos = "Zl2cWXgObiw8sdzLe4EVuJ1vIo0yfhTmUMHDYxp35kGStK6aNCP7ARFQqnrB9j8E";
		String ls_pwd1 = "lcD=H9SxrPEnRF57Xg3aWJICvmjVqw6ztOui4hykp0sf2bM&LeoQUANB8dTYZ1KG";
		String ls_pwd2 = "R0cfPSxCWq7irkNm2Z8lpobv1u=VBwGeE5Ftj3y6K&QDIY9AhHJXUd4aOzTnLMgs";
		System.out.println(ls_pos.length()+"--"+ls_pwd1.length()+"-"+ls_pwd2.length());
		int li_long, li_pos1, li_sum;
		String ls_mid, ls_rt = "";
		String ls_apos, ls_bpos;
		li_sum = 0;
		li_long = as_pwd.length();
		for (int i = 0; i < li_long; i++) {
			ls_mid = as_pwd.substring(i, i + 1);
			li_pos1 = ls_pos.indexOf(ls_mid) + 1;
			li_sum = li_sum + li_pos1;
		}

		if (li_sum % 2 != 0) {
			ls_apos = ls_pwd1;
			ls_bpos = ls_pwd2;
		} else {
			ls_apos = ls_pwd2;
			ls_bpos = ls_pwd1;
		}

		for (int i = 0; i < li_long; i++) {
			ls_mid = as_pwd.substring(i, i + 1);
			System.out.println(ls_mid);
			li_pos1 = ls_apos.indexOf(ls_mid);
			ls_mid = ls_bpos.substring(li_pos1, li_pos1 + 1);
			ls_rt = ls_rt + ls_mid;
		}

		if (li_sum % 2 != 0) {
			newStr = "1" + ls_rt;
		} else {
			newStr = "0" + ls_rt;
		}

		return newStr;

	}

	/**
	 *  解密
	 * 
	 * @param as_pwd
	 * @return
	 */
	public static String decrypt(String as_pwd) {
		String ls_pwd1 = "lcD=H9SxrPEnRF57Xg3aWJICvmjVqw6ztOui4hykp0sf2bM&LeoQUANB8dTYZ1KG";
		String ls_pwd2 = "R0cfPSxCWq7irkNm2Z8lpobv1u=VBwGeE5Ftj3y6K&QDIY9AhHJXUd4aOzTnLMgs";
		String strTemp = as_pwd.substring(0, 1);
		String ls_apos, ls_bpos;
		int li_long, li_pos1;
		String ls_mid, ls_rt = "";
		if (strTemp.equals("1")) {
			ls_apos = ls_pwd1;
			ls_bpos = ls_pwd2;
		} else {
			ls_apos = ls_pwd2;
			ls_bpos = ls_pwd1;
		}
		as_pwd = as_pwd.substring(1);
		li_long = as_pwd.length();
		for (int i = 0; i < li_long; i++) {
			ls_mid = as_pwd.substring(i, i + 1);
			li_pos1 = ls_bpos.indexOf(ls_mid);
			ls_mid = ls_apos.substring(li_pos1, li_pos1 + 1);
			ls_rt = ls_rt + ls_mid;
		}
		return ls_rt;
	}
	
	
	
	private static Key initKeyForAES(String key) throws NoSuchAlgorithmException {
		if (null == key || key.length() == 0) {
			throw new NullPointerException("key not is null");
		}
		SecretKeySpec key2 = null;
		try {
			KeyGenerator kgen = KeyGenerator.getInstance("AES");
			kgen.init(128, new SecureRandom(key.getBytes()));
			SecretKey secretKey = kgen.generateKey();
			byte[] enCodeFormat = secretKey.getEncoded();
			key2 = new SecretKeySpec(enCodeFormat, "AES");
		} catch (NoSuchAlgorithmException ex) {
			throw new NoSuchAlgorithmException();
		}
		return key2;

	}

	/**
	 * AES加密算法，不受密钥长度限制
	 * @param content
	 * @param key
	 * @return
	 */
	public static String encryptAES(String content, String key){
		try{
			SecretKeySpec secretKey = (SecretKeySpec) initKeyForAES(key);
			Cipher cipher = Cipher.getInstance("AES");// 创建密码器
			byte[] byteContent = content.getBytes("utf-8");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey);// 初始化
			byte[] result = cipher.doFinal(byteContent);
			return asHex(result); // 加密
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * aes解密算法，不受密钥长度限制
	 * @param content
	 * @param key
	 * @return
	 */
	public static String decryptAES(String content, String key){
		try{
			SecretKeySpec secretKey = (SecretKeySpec) initKeyForAES(key);
			Cipher cipher = Cipher.getInstance("AES");// 创建密码器
			cipher.init(Cipher.DECRYPT_MODE, secretKey);// 初始化
			byte[] result = cipher.doFinal(asBytes(content));
			return new String(result); // 加密
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 将2进制数值转换为16进制字符串
	 * @param buf
	 * @return
	 */
	private static String asHex(byte buf[]){
		StringBuffer strbuf = new StringBuffer(buf.length * 2);
		int i;
		for (i = 0; i < buf.length; i++){
			if (((int) buf[i] & 0xff) < 0x10)
				strbuf.append("0");
			strbuf.append(Long.toString((int) buf[i] & 0xff, 16));
		}
		return strbuf.toString();
	}
    
	
	/**
	 * 将16进制转换
	 * @param hexStr
	 * @return
	 */
	private static byte[] asBytes(String hexStr) {
		if (hexStr.length() < 1)
			return null;
		byte[] result = new byte[hexStr.length() / 2];
		for (int i = 0; i < hexStr.length() / 2; i++){
			int high = Integer.parseInt(hexStr.substring(i * 2, i * 2 + 1), 16);
			int low = Integer.parseInt(hexStr.substring(i * 2 + 1, i * 2 + 2),16);
			result[i] = (byte) (high * 16 + low);
		}
		return result;
	}
}
