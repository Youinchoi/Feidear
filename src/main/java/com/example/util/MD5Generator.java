package com.example.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// 파일 저장 시 파일명을 무작위하게 잡기 위함(체크섬)
public class MD5Generator {
	
    private String result;

    // 랜덤으로 파일명 처리해줌
    public MD5Generator(String input) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        MessageDigest mdMD5 = MessageDigest.getInstance("MD5");
        mdMD5.update(input.getBytes("UTF-8"));
        byte[] md5Hash = mdMD5.digest();
        StringBuilder hexMD5hash = new StringBuilder();
        for(byte b : md5Hash) {
            String hexString = String.format("%02x", b);
            hexMD5hash.append(hexString);
        }
        result = hexMD5hash.toString();
    }

    public String toString() {
        return result;
    }
}
