package com.yizhaobao.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class Download {
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
}
