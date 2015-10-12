package com.lcm.util.file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import sun.misc.BASE64Decoder;

/**
 * 上传文件工具类，适用于action<br/>
 * date:2013.5.15<br/>
 * @author usher
 * */
public class FileUploadUtil {
    private static int newWith = 100;		//压缩后的图片宽度或压缩比例
	private static int newHeight = 100;	//压缩后的图片高度或压缩比例

	/**
	 * 上传文件方法<br/>
	 * date:2013.5.15<br/>
	 * @param request 上传文件的对应请求
	 * @param file 上传的文件
	 * @param fName 上传的文件名
	 * @param path 保存上传文件的相对路径,例如，想保存在项目目录下的"img"文件夹下，则该参数要设置为"img"
	 * @return key-value形式，key表示是否操作成功，value表示成功后的文件路径+文件名，
	 * 例如，若是文件保存在img下面，文件重命名为2013519124532.jpg，则返回值为"img/2013219124532.jpg"
	 * */
	@SuppressWarnings("unused")
	public static Map<Object, String> upload(HttpServletRequest request, File file, String fName, String path, boolean... compress){

		Map<Object, String> result = new HashMap<Object, String>();

		@SuppressWarnings("deprecation")
		String savePath = request.getRealPath("/") + File.separator + path + File.separator;   

		String extName = "";//扩展名  
		String newFileName= "";//新文件名
		String fileName = "";//文件名

		//获取扩展名  
		//获取文件原名称
		if(null != fName && !"".equals(fName)){
			if(fName.lastIndexOf(".") > -1){  
				extName = fName.substring(fName.lastIndexOf("."));  
				fileName = fName.substring(0, fName.lastIndexOf(".")); 
			}  
		}
		
		Date date = new Date();
		try {
			Thread.sleep(500);
		} catch (InterruptedException e1) {
			e1.printStackTrace();
		} 
		String nowTime = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date);//当前时间
		newFileName = nowTime + extName;  

		try {
			//创建父集文件
			File dir = new File(savePath);

			if(!dir.exists()){
				dir.mkdirs();
			}

			result.put("size", Long.toString(file.length()/1024));
			file.renameTo(new File(savePath + newFileName));

		} catch (Exception e) {
			e.printStackTrace();
			result.put(false, "保存出错!");
			return result;
		}
		
		result.put(true, path + "/" + newFileName);

		return result;
	}
	
	/**
	 * 复制文件到前台页面，暂不支持框服务器<br/>
	 * author:linchengmin<br/>
	 * date:2014-01-13<br/>
	 * @param oldPath String 原文件路径 如：c:/ixunkangBD.png
     * @param newPath String 复制后路径 如：f:/ixunkang.png 
     * @param compress 是否进行压缩
	 * */
	private static Boolean copyFile(String oldPath,String newFileName, String newPath,boolean... compress) {
		try { 
		   File filedata = new File(oldPath + newFileName); 
		   File savefile = new File(newPath + newFileName); 
		   FileUtils.copyFile(filedata,savefile);
		   
		}  catch (Exception e) { 
		   System.out.println("复制单个文件操作出错"); 
		   e.printStackTrace(); 
		   return false;
		} 
	    return true;
	}

	/**
	 * 删除上传过程中不需要的文件<br/>
	 * date:2013.5.16<br/>
	 * @param path 要删除的文件的路径和文件名
	 * @return boolean 是否删除成功
	 * */
	public static Map<Object, String> deleteFile(HttpServletRequest request, String path){

		Map<Object, String> result = new HashMap<Object, String>();
		result.put("size", "0");

		@SuppressWarnings("deprecation")
		String basePath = request.getRealPath("/") + "\\";

		String [] paths = new String[]{};

		//判断是否删除多条数据
		if (path.contains(";")) {
			paths = path.split(";");

		}else{
			paths = new String[]{path};
		}

		//删除数据
		for (int i = 0; i < paths.length; i++) {
			File file = new File(basePath + paths[i]);

			if (file.isFile() && file.exists()) {
				//获取压缩的图片类型，正常为small，normal，big；具体由配置文件设定
				String [] compressPictureType = {"small","normal","big"};
				int len = compressPictureType.length;
				String [] fileName = paths[i].split("\\.");

				//删除压缩图片
				for (int j = 0; j < len; j++) {
					File file_temp = new File(basePath
							+ fileName[0]
									+ "_"
									+ compressPictureType[j]
											+ "." + fileName[1]);
					file_temp.delete();
				}

				result.put("size", Long.toString(Long.parseLong(result.get("size") + file.length())));
				file.delete();
				result.put(true, "success");

			}else{
				//若是删除失败则返回删除失败的路径
				if(null == result.get(false) || "".equals(result.get(false))){
					result.put(false, paths[i]);

				}else{
					result.put(false, result.get(false) + ";" + paths[i]);
				}				
			}
		}

		return result;

	}

	/**
	 * 根据相对路径获取绝对路径
	 * @author huangjt<br/>
	 * date 2013-6-17<br/>
	 * @param path
	 * @return
	 */
	public static File getFile(HttpServletRequest request, String path){
		@SuppressWarnings("deprecation")
		String basePath = request.getRealPath("/") + "\\";
		File file = new File(basePath + path);

		return file;
	}

	/**
	 * 保留文件名称的上传文件方法<br/>
	 * add by linchengmin on 2013-8-5 11:21:32<br/>
	 * @param request 上传文件的对应请求
	 * @param file 上传的文件
	 * @param fName 上传的文件名
	 * @param path 保存上传文件的相对路径,例如，想保存在项目目录下的"img"文件夹下，则该参数要设置为"img"
	 * @return key-value形式，key表示是否操作成功，value表示成功后的文件路径+文件名，
	 * 例如，若是文件保存在img下面，文件重命名为2013519124532.jpg，则返回值为"img/2013219124532.jpg"
	 * */
	public static Map<Object, String> uploadByOriginalName(HttpServletRequest request, File file, String fName, String path){

		Map<Object, String> result = new HashMap<Object, String>();

		@SuppressWarnings("deprecation")
		String savePath = request.getRealPath("/") + "\\" + path + "\\";   

		String newFileName= "";//新文件名
		@SuppressWarnings("unused")
		String fileName = "";//文件名

		String nowTime = fName.replace(" ", "");//当前时间
		Date date = new Date();
		newFileName = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date)+nowTime;  

		try {
			//创建父集文件
			File dir = new File(savePath);
			if(!dir.exists()){
				dir.mkdirs();
			}

			result.put("size", Long.toString(file.length()/1024));
			file.renameTo(new File(savePath + newFileName));

		} catch (Exception e) {
			result.put(false, "保存出错!");
			return result;
		}

		result.put(true, path + "/" + newFileName);
		
		copyFile(savePath,newFileName, ServletActionContext.getContext().getApplication().get("frontUploadPath")+ "\\" + path + "\\");

		return result;
	}

	/**
	 * 通过base64编码上传文件方法<br/>
	 * date:2013-12-27 16:43:51<br/>
	 * @param request 上传文件的对应请求
	 * @param file 上传的文件
	 * @param fName 上传的文件名
	 * @param path 保存上传文件的相对路径,例如，想保存在项目目录下的"img"文件夹下，则该参数要设置为"img"
	 * @return key-value形式，key表示是否操作成功，value表示成功后的文件路径+文件名，
	 * 例如，若是文件保存在img下面，文件重命名为2013519124532.jpg，则返回值为"img/2013219124532.jpg"
	 * */
	public static Map<Object, String> uploadFileByBase64(HttpServletRequest request, String base64Str, String path, boolean ... compress){

		Map<Object, String> result = new HashMap<Object, String>();
		
		if (base64Str == null || "".equals(base64Str)){ //图像数据为空
			result.put(false, "");
			return result;
		}

		base64Str = base64Str.split("base64,")[1];
		BASE64Decoder decoder = new BASE64Decoder();
		
		try {
			//Base64解码
			byte[] b = decoder.decodeBuffer(base64Str);
			for(int i=0;i<b.length;++i){
				if(b[i]<0){//调整异常数据
					b[i]+=256;
				}
			}
			
			@SuppressWarnings("deprecation")
			String savePath = request.getRealPath("/") + "\\" + path + "\\";   
			String newFileName= "";//新文件名


			Date date = new Date();
			String nowTime = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date);//当前时间
			newFileName = nowTime + ".png"; 
			
			//生成jpeg图片
			String imgFilePath = savePath + newFileName;//新生成的图片
			OutputStream out = new FileOutputStream(imgFilePath);
			
			out.write(b);
			out.flush();
			out.close();

			File file = new File(imgFilePath);
			
			result = upload(request, file, newFileName, path, compress);
			
			if (result.containsKey(true)) {
				deleteFile(request, savePath + newFileName);
			}
			
			return result;

		}catch (Exception e){
			result.put(false, "");
			return result;
		}
	}
	
	public static void setNewWith(int newWith) {
		FileUploadUtil.newWith = newWith;
	}

	public static int getNewWith() {
		return newWith;
	}

	public static void setNewHeight(int newHeight) {
	    	FileUploadUtil.newHeight = newHeight;
	}

	public static int getNewHeight() {
		return newHeight;
	}
}
