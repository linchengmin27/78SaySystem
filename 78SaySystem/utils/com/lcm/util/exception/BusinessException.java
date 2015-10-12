package com.lcm.util.exception;

/**
 * 业务异常处理类<br/>
 */
public class BusinessException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7891696773984790887L;

	public BusinessException(String frdMessage) {  
		super(createFriendlyErrMsg(frdMessage));  
	}  
 
	public BusinessException(Throwable throwable) {  
		super(throwable);  
	}  
  
	public BusinessException(Throwable throwable, String frdMessage) {  
		super(throwable);  
	}  
 
	private static String createFriendlyErrMsg(String msgBody) {  
		String prefixStr = "抱歉，";  
		String suffixStr = " 请稍后再试或与管理员联系！";  
		
		StringBuffer friendlyErrMsg = new StringBuffer("");  	  
		friendlyErrMsg.append(prefixStr);  
		friendlyErrMsg.append(msgBody);  
		friendlyErrMsg.append(suffixStr);  
		
		return friendlyErrMsg.toString();  
	}  

}
