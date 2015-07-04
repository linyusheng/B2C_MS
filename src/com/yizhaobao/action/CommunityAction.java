package com.yizhaobao.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Map;
import java.util.UUID;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Community;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.CommunityService;
import com.yizhaobao.util.Tool;

public class CommunityAction {
	
	@Getter @Setter private CommunityService communityService;
	@Getter @Setter private Community community;
	@Getter @Setter private User user;
	@Getter @Setter private Integer id;
	@Getter @Setter	private File upload;
	@Getter @Setter private String uploadContentType;
	@Getter @Setter private String uploadFileName;
	
	/**
	 * 保存新圈子
	 */
	@SuppressWarnings("unchecked")
	public String save() throws Exception {
		//初始化圈子的信息
		Map<String,Object> session = (Map)ActionContext.getContext().getSession();
		user = (User)session.get("user");
		uploadPhoto();
		community.setCommunityPhoto(uploadFileName);
		community.setUser(user);
		community.setCommunityRank(1);
		community.setCommunityScore(0);
		community.setUserNum(1);
		community.setMessageNum(0);
		community.setAddTime(Tool.getCurrentTime());
		communityService.saveCommunity(community);
		return "success";
	}
	
	public String doNothing() throws Exception {
		return "success";
	}
	/**
	 * 进入发表新圈子页面
	 */
	public String enterAddCommunity() throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		user = (User)session.get("user");
		if(user == null){
			return "login";
		}
		return "success";
	}
	/**
	 * 上传圈子图片
	 */
	public void uploadPhoto() throws Exception{
		if (upload != null) {
			//重新设置上传图片名为唯一标识码
			setUploadFileName(UUID.randomUUID().toString()+ getUploadFileName());
			FileOutputStream fos = new FileOutputStream(Tool.getWebRootPath() + "images\\communityPhoto\\" + getUploadFileName());
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer))>0){
				fos.write(buffer, 0, len);
			}
		}
	}
	/**
	 * 下载圈子图片
	 */
	public String downloadPhoto() throws Exception{
		
		return "";
	}
}
