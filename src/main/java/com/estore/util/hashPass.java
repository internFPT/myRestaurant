package com.estore.util;

import org.apache.commons.codec.digest.DigestUtils;

public class hashPass {


    public static boolean isPasswordValid(String plainPassword, String hashedPassword) {
        String hashedInput = DigestUtils.sha256Hex(plainPassword);
        System.out.println(hashedInput +"/"+ hashedPassword);
        return hashedInput.equals(hashedPassword);
    }
}
