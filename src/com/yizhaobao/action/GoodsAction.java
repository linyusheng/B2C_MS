package com.yizhaobao.action;

import java.util.Iterator;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Goods;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.GoodsService;
import com.yizhaobao.service.UserService;
import com.yizhaobao.util.Tool;

public class GoodsAction {
	
	@Getter @Setter private GoodsService goodsService;
	@Getter @Setter private UserService userService;
	@Getter @Setter private Goods goods;
	@Getter @Setter private Integer id;
	
	/**
	 * 保存商品信息
	 */
	@SuppressWarnings("unchecked")
	public String save() throws Exception{
		Shop shop = null;
		User user = null;
		Map<String, Object> session = ActionContext.getContext().getSession();
		Integer id=(Integer)session.get("loginId");
		user=userService.loadUser(id);
		//获取该商户的商店集合,目前一个商户只拥有一个商店
		Iterator it = user.getShops().iterator();
		while(it.hasNext()){
			shop = (Shop)it.next();
		}
		if(shop == null){
			return "error";
		}
		goods.setShop(shop);
		goods.setPutTime(Tool.getCurrentTime());
		goodsService.saveGoods(goods);
		return "success";
	}
	/**
	 * 销毁一个商品信息
	 */
	public String remove() throws Exception{
		if(id != null){
			goodsService.removeGoods(id);
		}
		return "success";
	}
	
}
