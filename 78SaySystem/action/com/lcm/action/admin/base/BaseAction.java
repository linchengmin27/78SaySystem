package com.lcm.action.admin.base;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import com.lcm.util.file.FileUploadUtil;
import com.lcm.util.file.JsonUtil;
import com.lcm.util.file.PageBean;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 562817839086704332L;
	protected Integer page = 1;
	protected Integer pageSize = 10;
	protected T entity;
	protected PageBean<T> pageBean;
	public static final String SESSION_ADMIN = "sessionAdmin";
	public static final String SESSION_USER = "sessionUser";
	
	private File pic;// 封装上传文件域的属性，必须参数
	private String picContentType;// 封装上传文件类型的属性，必须参数，命名为File参数名+ContentType
	private String picFileName;	// 封装上传文件名的属性，必须参数，命名为File参数名+FileName
	
	private String imagesContentType;// 封装上传文件类型的属性，必须参数，命名为File参数名+ContentType
	private String imagesFileName;	// 封装上传文件名的属性，必须参数，命名为File参数名+FileName
	private String dir; //存放上传图片的路径
	private File images;// 封装上传文件域的属性，必须参数
	
	/**
	 * 获取客户端的真实IP地址
	 * */
	protected String getIpAddr() {
		String ipAddress = null;
		HttpServletRequest request = ServletActionContext.getRequest();
		ipAddress = request.getHeader("x-forwarded-for");
		
		if(ipAddress == null || ipAddress.length() == 0 
				|| "unknown".equalsIgnoreCase(ipAddress)) { 
			ipAddress = request.getHeader("Proxy-Client-IP");
		}
		
		if(ipAddress == null || ipAddress.length() == 0 
				|| "unknown".equalsIgnoreCase(ipAddress)) {   
			ipAddress = request.getHeader("WL-Proxy-Client-IP");
		}
		
		if(ipAddress == null || ipAddress.length() == 0 
				|| "unknown".equalsIgnoreCase(ipAddress)) { 
			ipAddress = request.getRemoteAddr(); 
			
			if(ipAddress.equals("127.0.0.1")){
				//根据网卡取本机配置的IP
				InetAddress inet = null;
				
				try {   
					inet = InetAddress.getLocalHost();   
			    } catch (UnknownHostException e) {   
			    	e.printStackTrace();   
			    }   
			    ipAddress= inet.getHostAddress();
			}
		}
		
		//对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
		if(ipAddress!=null && ipAddress.length()>15){ //"***.***.***.***".length() = 15   
	         if(ipAddress.indexOf(",")>0){   
	             ipAddress = ipAddress.substring(0,ipAddress.indexOf(","));   
	         }   
	    }   
	    return ipAddress; 
	}

	protected void setAttrToRequest(String key, Object value) {
		ServletActionContext.getRequest().setAttribute(key, value);
	}
	
	protected void setAttrToSession(String key, Object value) {
		ServletActionContext.getRequest().getSession().setAttribute(key, value);
	}
	
	protected Object getAttrFromRequest(String key) {
		return ServletActionContext.getRequest().getAttribute(key);
	}
	
	protected Object getAttrFromSession(String key) {
		return ServletActionContext.getRequest().getSession().getAttribute(key);
	}
	
	@Action("/upload")
	public String upload() {
		String picStr = null; //存放上传列表图片后的路径
		
		//判断是否有上传列表图片
		if(null != getPic()){
			picStr = uploadPicture(getPic(), getPicFileName());
			
			if(null != picStr) {
				String json = "";
				json = "[{\"webUrl\":\"" + picStr + "\",\"newFileName\":\"" + picStr + "\"}]";
				JsonUtil.handleJSON(json);
			} else {
			    //基本上为上传失败
			    return ERROR;
			}
		}	
		return NONE;
	}
	
	@Action("/uploadImages")
	public String uploadImages() throws IOException {
		String imageStr = null; //存放上传图片后的路径
		
		//判断是否有上传图片
		if(null != getImages()){
			imageStr = uploadPicture(getImages(), getImagesFileName());
			
			if(null != imageStr) {
			    String json = "{'original':'','url':'" + imageStr +"','title':'','state':'success'}";
			    ServletActionContext.getResponse().getWriter().print(json);
			    
			} else {
			    //基本上为上传失败
			    return ERROR;
			}
		}
		
		return NONE;
	}
	
	 /**
	 * 进行图片的上传<br/>
	 * date:2014-1-25<br/>
	 * */
	public String uploadPicture(File file,String fileName) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMss");
    	Map<Object, String> resultMap = FileUploadUtil.upload(
    					ServletActionContext.getRequest(), 
    					file, 
    					fileName, 
    					"upload" + File.separator + sdf.format(new Date()), 
    					false
    				);
    	
    	//判断文件上传是否成功
		if(resultMap.containsKey(true)){
			//上传的文件名
			String returnFile = resultMap.get(true);
			return returnFile;
		}
		    
		return null;
	}
	
	public T getModel() {
		return entity;
	}
	
	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPage() {
		return page;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setEntity(T entity) {
		this.entity = entity;
	}

	public T getEntity() {
		return entity;
	}

	public void setPageBean(PageBean<T> pageBean) {
		this.pageBean = pageBean;
	}

	public PageBean<T> getPageBean() {
		return pageBean;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public File getPic() {
		return pic;
	}

	public void setPicContentType(String picContentType) {
		this.picContentType = picContentType;
	}

	public String getPicContentType() {
		return picContentType;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setImagesContentType(String imagesContentType) {
		this.imagesContentType = imagesContentType;
	}

	public String getImagesContentType() {
		return imagesContentType;
	}

	public void setImagesFileName(String imagesFileName) {
		this.imagesFileName = imagesFileName;
	}

	public String getImagesFileName() {
		return imagesFileName;
	}

	/**
	 * @param dir the dir to set
	 */
	public void setDir(String dir) {
		this.dir = dir;
	}

	/**
	 * @return the dir
	 */
	public String getDir() {
		return dir;
	}

	/**
	 * @param images the images to set
	 */
	public void setImages(File images) {
		this.images = images;
	}

	/**
	 * @return the images
	 */
	public File getImages() {
		return images;
	}
}
