package com.lcm.util.file;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;



/**
 *时间工具类<br/>
 * author:yeyaohui<br/>
 * date:2014-1-3<br/>
 */
public class DateUtil {
	
	public static final String DATE = "date";
	public static final String TIME = "time";
	public static final String DATE_TIME = "dateAndTime";
	
	/**
	 * @param style 返回的日期类型，默认为日期时间类型
	 * 有三种参数DATE，TIME，DATE_TIME，分别代表日期，
	 * 时间，日期和时间，默认可不写参数，为日期时间
	 * @return String 返回日期时间
	 * @introduction 有三种参数
	 * */
	public static String createDate(String... style) {
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(System.currentTimeMillis());
		Date d = c.getTime();
	
		if (0 < style.length) {
			
			if (style[0].equals(DATE)) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				return sdf.format(d);

			}else if(style[0].equals(DATE_TIME)){
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				return sdf.format(d);

			}else if(style[0].equals(TIME)){
				SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
				return sdf.format(d);
				
			}else{
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				return sdf.format(d);
			}

		}else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			return sdf.format(d);
		}
		
	}
	
	/**
	 * 转换成sql需要的格式
	 * @param dateString	转换时间
	 * @param style	转换格式
	 * @exception ParseException 时间类型转换出错，抛出的异常
	 * @return
	 */
	public static Timestamp shiftSQLTime(String dateString, String... style){
		
		DateFormat dateFormat = null;
		
		if (0 < style.length) {
			
			if (style[0].equals(DATE)) {
				dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				
			}else if(style[0].equals(DATE_TIME)){
				dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				
			}else if(style[0].equals(TIME)){
				dateFormat = new SimpleDateFormat("HH:mm:ss");
				
			}else{
				dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			}
			
		}else {
			dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}
		
		dateFormat.setLenient(false);
		java.util.Date timeDate = null;
		
		try {
			timeDate = dateFormat.parse(dateString);	//util类型	
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Timestamp dateTime = new Timestamp(timeDate.getTime());	
		
		return dateTime;
	}
	
	/**
	 * 将某日期与当前日期进行比较
	 * @param date 某日期
	 * @return 当某日期大于当前日期时，返回false，否则返回true
	 */
	public static boolean compareCurrentDate(Date date){
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
			Date nowDate = sdf.parse(createDate());//获取当前时间

			long result = date.getTime()-nowDate.getTime();
			
			if(result <= 0){
				return true;
				
			}else{
				return false;
			}

		} catch (ParseException e) {
			e.printStackTrace();
			return false;
		}


	}
	
	/**
	 *将timestamp转换成date<br/>
	 * @param time timestamp类型的时间
	 * @return date类型的时间
	 */
	public static Date timestampToDate(Timestamp time){
		return new Date(time.getTime());
	}
	
	/**
	 * 获得系统当前SQL格式的时间
	 * @return 返回当前时间
	 */
	public static Timestamp getCurrentTime(){
		return shiftSQLTime(createDate());
	}
	
	public static void main(String[] args){
		//获取当前时间
		System.out.println(getCurrentTime());
	}
	
}
