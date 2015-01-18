package com.iscream.util;

/**
 * Created by Saga on 14-3-10.
 */
public class Common {

    public static boolean isNotEmpty(String str) {
        if(str != null && !str.isEmpty()){
            return true;
        }
        return false;
    }
}
