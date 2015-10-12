package com.lcm.util.exception;


/**
 * 业务异常类
 */
public class BsException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9009062138826480147L;

	//异常代码
	private String key;
	
	private Object[] values;
	
	public BsException() {
		super();
	}

	public BsException(String message, Throwable throwable) {
		super(message, throwable);
	}

	public BsException(String message) {
		super(message);
	}

	public BsException(Throwable throwable) {
		super(throwable);
	}
	
	public BsException(String message,String key){
		super(message);
		this.key = key;
	}
	
	public BsException(String message,String key,Object value){
		super(message);
		this.key = key;
		this.values = new Object[]{value};
	}
	
	public BsException(String message,String key,Object[] values){
		super(message);
		this.key = key;
		this.values = values;
	}

	public String getKey() {
		return key;
	}

	public Object[] getValues() {
		return values;
	}
}
