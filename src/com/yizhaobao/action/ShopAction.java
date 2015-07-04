package com.yizhaobao.action;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.util.Tool;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.entity.Comment;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.Shoptype;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.CollectionService;
import com.yizhaobao.service.CommentService;
import com.yizhaobao.service.ShopService;
import com.yizhaobao.service.ShoptypeService;

/**
 * @author 林玉生
 * 
 */
public class ShopAction {
	
	@Getter @Setter private ShopService shopService;
	@Getter @Setter private ShoptypeService shoptypeService;
	@Getter @Setter private CommentService commentService;
	@Getter @Setter private CollectionService collectionService;
	@Getter @Setter private Shoptype shoptype;
	@Getter @Setter private Shop shop;
	@Getter @Setter private Comment comment;
	@Getter @Setter private Integer typeId;
	@Getter @Setter private String parentType;
	@Getter @Setter private Collection<Shop> shopColl;
	@Getter @Setter private Collection<Comment> commentColl;
	@Getter @Setter private PageBean pageBean;
	@Getter @Setter private Integer id;
	@Getter @Setter private String fileName;
	@Getter @Setter private String keyword;
	@Getter @Setter private String rank;
	@Getter @Setter private String userPhoto;
	@Getter @Setter private Integer[] rankNum = {0,0,0,0,0};//用于存放各种级别点评数量
	@Getter @Setter private String isCollection;
	@Getter @Setter private Object[] rankColl = {null,null,null,null,null};

	/**
	 * 根据商店ID查找商店及其点评信息
	 */
	public String load() throws Exception {
		if (id == null) {
			return "success";
		}
		shop = shopService.loadShop(id);
		return "success";
	}
	/**
	 * 保存商店
	 */
	public String save() throws Exception {
		shopService.saveShop(shop);
		return "success";
	}
	/**
	 * 根据页面传来的类型ID，查询此类型的商店，返回商店列表
	 */
	public String sort() throws Exception {
		if (pageBean == null) {
			pageBean = new PageBean();
		}
		if(typeId != null){
			shoptype = shoptypeService.loadShoptype(typeId);
			//若为大类
			if(typeId<9){
				shopColl = shopService.searchBigTypeShop(typeId,pageBean);
			}
			//若为小类
			if(typeId > 8){
				Integer parentTypeId = Integer.parseInt(shoptype.getTypeParentId());
				parentType = shoptypeService.loadShoptype(parentTypeId).getTypeName();
				shopColl = shopService.searchSmallTypeShop(typeId,pageBean);
			}
			if(shopColl.size() == 0) {
				
			}
		}
		return "success";
	}
	/**
	 * 进入商店主页
	 */
	public String enterShop()throws Exception {
		load();
		commentColl = commentService.searchShopComment(id, null);
		for (int i = 0; i < 5; i++) {
			//根据等级，查询出该商店不同等级的点评
			String index = (i + 1) + "";
			rankColl[i] = commentService.searchRankComment(id, index , null);
			//System.out.println(rankColl[i]);
		}
		for (Comment comment : commentColl) {
			Integer index = Integer.valueOf(comment.getCommentTotal()) - 1;
			rankNum[index]++;
		}
		//设置进入该商店的收藏状态
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		if(user == null){
			return "success";
		}
		isCollection = collectionService.isHaveCollection(user.getUserId(),id);
		return "success";
	}
	/**
	 * 根据客户端传来的类型ID，获取服务端中商店图片的存放路径
	 */
	public String findShopPhotoPath()throws Exception{
		String path;
		Integer parentId = Integer.valueOf(shoptypeService.loadShoptype(typeId).getTypeParentId());
		path = shoptypeService.loadShoptype(parentId).getTypeName()+ "\\"+shoptypeService.loadShoptype(typeId).getTypeName();
		String shopPhotoPath = Tool.getWebRootPath() + "images\\shopPhoto\\" + path;
		return shopPhotoPath;
	}
	/**
	 * 根据路径，下载商店图片
	 */
	public String downlaodShopPhoto() throws Exception {
		String filePath = findShopPhotoPath() + "\\" + fileName;
		Tool.downlaod(fileName,filePath);
		return "";
	}
	/** 
	 * 参数：keyword
	 * 功能：对用户输入的关键字进行搜索，找到符合用户的商户或商品
	 */
	public String search() throws Exception{
		if (pageBean == null) {
			pageBean = new PageBean();
		}
		//搜索商户
		shopColl = shopService.modelSearch(keyword, pageBean);
		if(shopColl.size() == 0){
			
		}
		return "success";
	}
	/**
	 * 下载等级图片
	 */
	public String downlaodRankPhoto() throws Exception{
		//如果rank是小数，进行四舍五入取整
		if(rank.length()>1){
			rank = new BigDecimal(rank).setScale(0, BigDecimal.ROUND_HALF_UP).toString();
		}
		String fileName = rank + ".png";
		String filePath = Tool.getWebRootPath() + "images\\rank\\" +fileName;
		Tool.downlaod(fileName,filePath);
		return "";
	}
	/**
	 * 下载用户头像
	 */
	public String downloadUserPhoto() throws Exception{
		String filePath = Tool.getWebRootPath() + "images\\userPhoto\\" + userPhoto;
		Tool.downlaod(userPhoto, filePath);
		return "";
	}
	/**
	 * 进入写点评主页,需要用户先登录
	 */
	public String writeComment() throws Exception{
		Map<String,Object> session = ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		if(user == null){
			return "login";
		}
		if(id != null){
			load();
			comment = commentService.searchShopFiveComment(id, null).get(0);
		}
		return "success";
	}
	/**
	 * 收藏商店,需要用户先登录
	 */
	public String collectionShop()throws Exception {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		if(user == null){
			return "login";
		}
		load();
		com.yizhaobao.entity.Collection collection = new com.yizhaobao.entity.Collection();
		collection.setUser(user);
		collection.setShop(shop);
		collection.setCollectionTime(Tool.getCurrentTime());
		collectionService.saveCollection(collection);
		return "success";
	}
	/**
	 * 不对页面做任何响应
	 */
	public String doNothing() throws Exception{
		return "success";
	}
	

}
