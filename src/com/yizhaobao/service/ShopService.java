package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.ShopDAO;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class ShopService {
	
	@Getter @Setter private ShopDAO shopDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Shop loadShop(Integer id){
		return shopDAO.findById(id);
	}
	/**
	 * 执行新增对象保存操作
	 */
	public void saveShop(Shop shop) {
		shopDAO.merge(shop);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeShop(Integer id) {
		shopDAO.delete(shopDAO.findById(id));
	}
	/**
	 * 根据用户ID查找相应商店
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> searchShopByUserId(Integer id) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shop as s where s.user.userId = '"+id+"'";
		String countHql="select count(*) "+selectHql;
		List<Shop> shopList=PageService.searchByPage(selectHql, countHql, params, null, shopDAO);
		return shopList;
	}
	/**
	 * 根据类型ID查找小类型相同的商店
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> searchSmallTypeShop(Integer id,PageBean page) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shop as s where s.shoptype.typeId = '"+id+"'";
		String countHql="select count(*) "+selectHql;
		List<Shop> shopList=PageService.searchByPage(selectHql, countHql, params, page, shopDAO);
		return shopList;
	}
	/**
	 * 根据类型ID查询大类型相同的商店
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> searchBigTypeShop(Integer id,PageBean page) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shop as s where s.shoptype.typeId in (select typeId from Shoptype where typeParentId = '"+id+"')";
		String countHql="select count(*) "+selectHql;
		List<Shop> shopList=PageService.searchByPage(selectHql, countHql, params, page, shopDAO);
		return shopList;
	}
	/**
	 * 模式搜索商店
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> modelSearch(String keyword,PageBean page) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shop as s where s.shopName like '%" + keyword + "%'";
		String countHql="select count(*) "+selectHql;
		List<Shop> shopList=PageService.searchByPage(selectHql, countHql, params, page, shopDAO);
		return shopList;
	}
	
	
	
	
	
}
