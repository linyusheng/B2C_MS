package com.yizhaobao.action;

import java.util.Map;

import lombok.Getter;
import lombok.Setter;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.Shoptype;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.ShopService;
import com.yizhaobao.service.ShoptypeService;
import com.yizhaobao.service.UserService;
import com.yizhaobao.util.Json;
import com.yizhaobao.util.Tool;

public class RegisterAction {
	
	@Getter @Setter private UserService userService;
	@Getter @Setter private ShoptypeService shoptypeService;
	@Getter @Setter private ShopService shopService;
	@Getter @Setter private User user;
	@Getter @Setter private Shop shop;
	@Getter @Setter private Shoptype shoptype;
	@Getter @Setter private String userName;
	@Getter @Setter private String result;
	@Getter @Setter private String shopName;
	@Getter @Setter private String shopAddress;
	@Getter @Setter private String bigType;
	@Getter @Setter private String smallType;
	
	/**
	 * 用户注册(包括普通用户，商户和管理员)
	 */
	public String register()throws Exception{
		//判断此用户名是否存在数据库中
		if(!userService.isUserNameExist(user.getUserName())){
			//初始化用户信息
			user.setPhoto("default.gif");
			user.setRank("1");
			user.setRegisterTime(Tool.getCurrentTime());
			//普通用户注册
			if(user.getRole().getRoleId() == 2){
				userService.saveUser(user);
				return "success";
			}
			//商户注册，同时为该商户注册一个商店
			if(user.getRole().getRoleId() == 3){
				userService.saveBusiness(user);
				//得到用户选择的商店类型,并判断该商店类型是否存在于数据库中
				String typeCoding = bigType + smallType;
				shoptype = shoptypeService.searchShoptypeByTypeCoding(typeCoding);
				//若存在，将返回的商店类型对象设置在shop对象上，并为该商户注册一个商店
				if(shoptype != null){
					User business = userService.searchUserByUserName(user.getUserName()).get(0);
					shop.setUser(business);
					shop.setShoptype(shoptype);
					shopService.saveShop(shop);
				}
			}
			return "success";
		}
		else{
			return "false";
		}
	}
	/**
	 * 保存商户的商店信息
	 */
	@SuppressWarnings("unchecked")
	public String saveBusinessShop() throws Exception{
		//根据商户的选择查找商店类型ID
		String typeCoding = bigType + smallType;
		shoptype = shoptypeService.searchShoptypeByTypeCoding(typeCoding);
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		Integer id = (Integer)session.get("loginId");
		shop = shopService.searchShopByUserId(id).get(0);
		shop.setShopName(shopName);
		shop.setShopAddress(shopAddress);
		shop.setShoptype(shoptype);
		return "success";
	}
	/**
	 * Ajax方式验证用户名是否存在数据库中
	 */
	public String isHaveUser() throws Exception{
		//设置ajax传来的中文编码
		userName = java.net.URLDecoder.decode(userName, "UTF-8"); 
		Json json = new Json();
		if(userService.isUserNameExist(userName)){
			json.setSuccess(true);
			json.setMsg("此用户名已存在！");
		}
		//把封装的JSON对象转化为字符串，传回客户端
		JSONObject jsonObject = JSONObject.fromObject(json);
		result = jsonObject.toString();
		return "success";
	}
	/**
	 *	不做任何响应
	 */
	public String doNothing() throws Exception{
		return "success";
	}
}
