package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Collection;
import com.yizhaobao.entity.CollectionDAO;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class CollectionService {
	//收藏
	@Getter @Setter private CollectionDAO collectionDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Collection loadCollection(Integer id){
		return collectionDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveCollection(Collection collection) {
		collectionDAO.merge(collection);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeCollection(Integer id) {
		collectionDAO.delete(collectionDAO.findById(id));
	}
	/**
	 * 查询用户的收藏记录
	 */
	@SuppressWarnings("unchecked")
	public List<Collection> searchUserCollection(Integer id,PageBean page){
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Collection as c where c.user.userId = '" + id + "' order by c.collectionTime desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Collection> list = PageService.searchByPage(selectHql, countHql, params, page, collectionDAO);
		return list;
	}
	/**
	 * 判断用户是否收藏过此商店，收藏过返回true，否则返回false
	 */
	@SuppressWarnings("unchecked")
	public String isHaveCollection(Integer userId,Integer shopId) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Collection as c where c.user.userId = '" + userId + "' and c.shop.shopId = '" + shopId + "'";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Collection> list = PageService.searchByPage(selectHql, countHql, params, null, collectionDAO);
		if (list.size() == 0) {
			return "fasle";
		}
		return "true";
	}

	
	
	
	
	
	
	
	
}
