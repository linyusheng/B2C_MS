package com.yizhaobao.action;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Comment;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.CommentService;
import com.yizhaobao.service.ShopService;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.Tool;

public class CommentAction {
	
	@Getter @Setter private CommentService commentService;
	@Getter @Setter private ShopService shopService;
	@Getter @Setter private Comment comment;
	@Getter @Setter private Collection<Comment> commentColl;
	@Getter @Setter private PageBean pageBean;
	@Getter @Setter private Integer id;
	@Getter @Setter private Integer[] ids;
	@Getter @Setter private String date;
	@Getter @Setter private Integer shopId;
	@Getter @Setter private Shop shop;
	
	// 新增和编辑的数据读取操作
	public String load() throws Exception {
		if (id == null) {
			return "success";
		}
		comment = commentService.loadComment(id);
		return "success";
	}
	
	// 新增和编辑的数据保存操作
	@SuppressWarnings("unchecked")
	public String save() throws Exception {
		Map<String,Object> session = (Map)ActionContext.getContext().getSession();
		User user = (User)session.get("user");
		if(user == null){
			return "login";
		}
		comment.setUser(user);
		shop = shopService.loadShop(shopId);
		comment.setShop(shop);
		comment.setCommentDate(Tool.getCurrentTime());
		commentService.saveComment(comment);
		//刷新商店点评平均值
		String[] str = countAverage(shopId);
		shop.setTotalComment(str[0]);
		shop.setQualityComment(str[1]);
		shop.setEnvironmentComment(str[2]);
		shop.setServiceComment(str[3]);
		shopService.saveShop(shop);
		return "success";
	}

	// 删除数据操作
	public String remove() throws Exception {
		commentService.removeComment(id);
		return "success";
	}
	/**
	 * 根据用户ID查找点评信息
	 */
	public String searchUserComment()throws Exception {
		if(pageBean == null){
			pageBean = new PageBean();
		}
		commentColl = commentService.searchUserComment(6, pageBean);
		return "success";
	}
	/**
	 * 根据商店ID查找点评信息
	 */
	public String searchShopComment()throws Exception {
		if(pageBean == null){
			pageBean = new PageBean();
		}
		commentColl = commentService.searchShopComment(shopId, pageBean);
		return "success";
	}
	/**
	 * 根据日期查找点评信息
	 */
	public String searchDateComment()throws Exception {
		if(pageBean == null){
			pageBean = new PageBean();
		}
		date = "2014-04-05 16:40:56";
		commentColl = commentService.searchDateComment(date, pageBean);
		return "success";
	}
	/**
	 * 统计一个商户的总体评价，质量评价，环境评价，服务评价的平均值
	 * @return 平均值字符数组String[]
	 */
	public String[] countAverage(Integer shopId)throws Exception{
		String[] str = {null,null,null,null};
		float[] commentAverage= {0,0,0,0};
		BigDecimal[] b = {null,null,null,null};
		List<Comment> list = commentService.searchShopComment(shopId, null);
		for (Iterator<Comment> iterator = list.iterator(); iterator.hasNext();) {
			Comment comment = (Comment) iterator.next();
			commentAverage[0] += Float.valueOf(comment.getCommentTotal());
			commentAverage[1] += Float.valueOf(comment.getCommentMass());
			commentAverage[2] += Float.valueOf(comment.getCommentEnvironment());
			commentAverage[3] += Float.valueOf(comment.getCommetntService());
		}
		//控制精度为一位小数点
		for (int i = 0; i < 4; i++) {
			b[i] = new  BigDecimal(commentAverage[i]/list.size());
			commentAverage[i] = b[i].setScale(1,BigDecimal.ROUND_HALF_UP).floatValue();
			str[i] = String.valueOf(commentAverage[i]);
		}
		return str;
	}
	
	
	
	
	
}
