package com.lcm.util.interceptor;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import org.apache.log4j.Logger;
import org.springframework.aop.ThrowsAdvice;
import org.springframework.dao.DataAccessException;

import com.lcm.util.exception.BusinessException;

/**
 * 异常切面拦截<br/>
 * 由Spring AOP调用 输出异常信息，把程序异常抛向业务异常<br/>
 */
public class ExceptionAdvisor implements ThrowsAdvice {

	/**
	 * 
	 */
	private static final long serialVersionUID = -9196434437192242662L;
	
	public void afterThrowing(Method method, Object[] args, Object target, 
			Exception ex) throws Throwable {  
		// 在后台中输出错误异常异常信息，通过log4j输出。   
		Logger log = Logger.getLogger(target.getClass());  
		log.error("**************************************************************");  
		log.error("异常方式的类名为: " + target.getClass().getName());  
		log.error("异常发生的方法为: " + method.getName());  
		for (int i = 0; i < args.length; i++) {  
			log.error("arg[" + i + "]: " + args[i]);  
		}  
			
		log.error("异常类名: " + ex.getClass().getName());  
		log.error("异常信息:" + ex.getMessage());  
		ex.printStackTrace();  
		log.error("**************************************************************");  
		
		// 根据不同的异常返回错误。   
		if (ex.getClass().equals(DataAccessException.class)) {  
			printException(ex,"数据库操作失败!");  
			
		} else if (ex.getClass().toString().equals(NullPointerException.class.toString())) { 
			printException(ex,"调用了未经初始化的对象或者是不存在的对象!");  
			
		} else if (ex.getClass().equals(IOException.class)) {  
			printException(ex,"IO操作异常!");  
		
		} else if (ex.getClass().equals(ClassNotFoundException.class)) {  
			printException(ex,"指定的类不存在!");    
		
		} else if (ex.getClass().equals(ArithmeticException.class)) {  
			printException(ex,"数学运算异常!");   
		
		} else if (ex.getClass().equals(ArrayIndexOutOfBoundsException.class)) {  
			printException(ex,"数组下标越界!");   
		
		} else if (ex.getClass().equals(IllegalArgumentException.class)) {  
			printException(ex,"方法的参数错误!");  
		
		} else if (ex.getClass().equals(ClassCastException.class)) {  
			printException(ex,"类型强制转换错误!");  
		
		} else if (ex.getClass().equals(SecurityException.class)) {  
			printException(ex,"违背安全原则异常!");   
		
		} else if (ex.getClass().equals(SQLException.class)) {  
			printException(ex,"操作数据库异常!"); 
		
		} else if (ex.getClass().equals(NoSuchMethodError.class)) {  
			printException(ex,"方法末找到异常!"); 
		
		} else if (ex.getClass().equals(InternalError.class)) {  
			printException(ex,"Java虚拟机发生了内部错误"); 
		
		} else {  
			printException(ex,"程序内部错误，操作失败!");  
		}  
	}  
	
	/**
	 * 控制台输出错误信息<br/>
	 * @param ex 异常类对象
	 * */
	private void printException(Exception ex, String msg) {
		ex.printStackTrace();
		throw new BusinessException(msg + ex.getMessage());  
	}

}
