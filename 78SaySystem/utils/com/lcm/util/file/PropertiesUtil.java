package com.lcm.util.file;

import java.io.IOException;
import java.util.Properties;


public class PropertiesUtil {
	private static Properties prop = new Properties();    
    static{        
        try {
            //加载config.properties配置文件
        	prop.load(PropertiesUtil.class.getResourceAsStream("/config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    //设置常量
    public static final String BASE_PATH = prop.getProperty("BASE_PATH");
}
