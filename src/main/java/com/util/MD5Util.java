package com.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

public class MD5Util {
	public static String digest(String pwd) {
		// 用MD5类进行加工MessageDigest（对密码进行摘要处理），BASE64Encoder（将处理后的字节数据变为字符串 ）
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(pwd);
		byte[] bytes = md.digest(pwd.getBytes());
		BASE64Encoder base64Encod = new BASE64Encoder();
		return base64Encod.encode(bytes);
	}
}
