package com.yizhaobao.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Comment;
import com.yizhaobao.entity.Collection;
import com.yizhaobao.entity.Goods;
import com.yizhaobao.entity.Message;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.CollectionService;
import com.yizhaobao.service.CommentService;
import com.yizhaobao.service.GoodsService;
import com.yizhaobao.service.MessageService;
import com.yizhaobao.service.ShopService;
import com.yizhaobao.service.UserService;
import com.yizhaobao.util.Tool;
import com.yizhaobao.util.PageBean;

public class UserAction {

	@Getter @Setter private UserService userService;
	@Getter @Setter private CommentService commentService;
	@Getter @Setter private CollectionService collectionService;
	@Getter @Setter private MessageService messageService;
	@Getter @Setter private ShopService shopService;
	@Getter @Setter private GoodsService goodsService;
	@Getter @Setter private List<Comment> commentList;
	@Getter @Setter private List<Collection> collectionList;
	@Getter @Setter private List<Message> messageList;
	@Getter @Setter private List<Goods> goodsList;
	@Getter @Setter private PageBean page;
	@Getter @Setter private User user;
	@Getter @Setter private Shop shop;
	@Getter @Setter private Integer id;
	@Getter @Setter private Integer[] ids;
	@Getter @Setter private String password;
	@Getter @Setter private String newPassword;
	@Getter @Setter private File upload;
	@Getter @Setter private String uploadFileName;
	
	// 新增和编辑的数据读取操作
	public String load() throws Exception {
		if (id == null) {
			return "success";
		}
		user = userService.loadUser(id);
		return "success";
	}
	// 新增和编辑的数据保存操作
	public String save() throws Exception {
		userService.saveUser(user);
		return "success";
	}
	// 删除数据操作
	public String remove() throws Exception {
		for (int i = 0, size = ids.length; i < size; i++) {
			userService.removeUser(ids[i]);
		}
		return "success";
	}
	/**
	 * 更新Session
	 */
	@SuppressWarnings("unchecked")
	private void updateSession() throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		session.put("user", user);
		session.put("loginId", user.getUserId());
		session.put("loginName", user.getUserName());
		session.put("loginRoleName", user.getRole().getRoleName());
		session.put("loginPhoto", user.getPhoto());
	}
	/**
	 * 加载用户信息
	 */
	@SuppressWarnings("unchecked")
	public String loadMessage() throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		if(!session.containsKey("loginId")){
			return "fail";
		}
		id=(Integer)session.get("loginId");
		user=userService.loadUser(id);
		return "success";
	}
	/**
	 * 加载用户信息和我的点评信息
	 */
	public String myComment()throws Exception{
		loadMessage();
		commentList = commentService.searchUserComment(user.getUserId(), null);
		return "success";
	}
	/**
	 * 加载用户信息和我的收藏信息
	 */
	public String myCollection()throws Exception{
		loadMessage();
		collectionList = collectionService.searchUserCollection(user.getUserId(), null);
		return "success";
	}
	/**
	 * 加载用户信息和我的帖子信息
	 */
	public String myMessage()throws Exception{
		loadMessage();
		messageList = messageService.searchUserMessage(user.getUserId(), null);
		return "success";
	}
	/**
	 * 加载用户信息和我的签到信息
	 */
	public String myRegistration()throws Exception{
		loadMessage();
		
		return "success";
	}
	/**
	 * 加载用户信息和我的图片信息
	 */
	public String myPhoto()throws Exception{
		loadMessage();
		
		return "success";
	}
	/**
	 * 加载我的商店信息
	 */
	public String loadMyShop() throws Exception{
		loadMessage();
		shop = shopService.searchShopByUserId(id).get(0);
		return "success";
	}
	/**
	 * 加载商店的商品信息
	 */
	public String loadMyGoods() throws Exception{
		loadMessage();
		shop = shopService.searchShopByUserId(id).get(0);
		if(page == null){
			page = new PageBean();
		}
		goodsList = goodsService.searchAllGoods(shop.getShopId(), page);
		return "success";
	}
	/**
	 * 保存基本用户信息
	 */
	public String saveBaseInfo() throws Exception{
		updatePhoto();
		userService.saveUser(user);
		updateSession();
		return "success";
	}
	/**
	 * 保存其它用户信息
	 */
	public String saveMessage() throws Exception{
		userService.saveUser(user);
		updateSession();
		return "success";
	}
	/**
	 * 保存用户密码
	 */
	@SuppressWarnings("unchecked")
	public String savePassword() throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		if(!session.containsKey("loginId")){
			return "fail";
		}
		Integer id=(Integer)session.get("loginId");
		if(userService.savePassword(id, password, newPassword).equals("success")){
			return "success";
		}
		return "fail";
	}
	/**
	 * 更新用户上传的头像
	 */
	public void updatePhoto() throws Exception {
		//控制文件上传
		if(getUpload() != null){	//修改用户信息时，选择了图片上传功能
			setUploadFileName(UUID.randomUUID().toString()+ getUploadFileName());	//更改上传文件名为：用户名+上传文件名
			FileOutputStream fos = new FileOutputStream(Tool.getWebRootPath() + "images\\userPhoto\\" + getUploadFileName());
			FileInputStream fis = new FileInputStream(getUpload());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer))>0){
				fos.write(buffer, 0, len);
			}
			user.setPhoto(getUploadFileName());
		}
		else ;	//不选择图片上传功能则不修改图片
	}
	/**
	 * 将session里的头像下载到客户端
	 */
	@SuppressWarnings("unchecked")
	public String downloadPhoto() throws Exception {
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		String fileName = (String)session.get("loginPhoto");
		String filePath = Tool.getWebRootPath() + "images\\userPhoto\\" + fileName;
		Tool.downlaod(fileName, filePath);
		return "";
	}
	
}
