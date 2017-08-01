package com.shop.utils;

import com.alibaba.fastjson.JSON;

/**
 * Created by stiles on 2017/7/25.
 */
public class AjaxUtil {
    public static String ajaxJSONResponse(Object o) {
        return JSON.toJSONString(o);
    }
}
