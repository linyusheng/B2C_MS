package com.yizhaobao.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class Tool {
	/**
	 *	文件下载类
	 */
	public static void downlaod(String fileName,String filePath) throws Exception{
		//获取下载的文件流
		File downFile = new File(filePath);
		InputStream inStream = new FileInputStream(downFile);
		// 告诉Struts 执行完 Action 就行了，不用再去调用结果响应的操作
		ActionContext.getContext().getActionInvocation().getProxy().setExecuteResult(false);
		// 取得 HttpServletResponse
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("Content-Disposition", "attachment; filename="+ java.net.URLEncoder.encode(fileName, "UTF-8"));
		//输出文件流到客户端
		OutputStream out = response.getOutputStream();
		byte[] buffer = new byte[4096];
		while (inStream.read(buffer) > 0) {
			out.write(buffer);
		}
		out.flush();
	}
	/**
	 * 获得web项目根目录,如：http://lys:8080/B2C_MS/
	 */
	public static String getWebRootPath() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		ServletContext servletContext = (ServletContext)actionContext.get(ServletActionContext.SERVLET_CONTEXT);
		String rootPath = servletContext.getRealPath("/");
		return rootPath;
	}
	/**
	 * 获取系统当前时间,返回值类型为Timestamp
	 */
	public static Timestamp getCurrentTime()throws Exception{
		Timestamp currentTime = null;
		//HH：24小时制时间显示  hh:12小时制时间显示
		Format f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String systemTime = f.format(date);
		currentTime = Timestamp.valueOf(systemTime);
		return currentTime;
	}

}
