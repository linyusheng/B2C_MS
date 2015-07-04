package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Shoptype;
import com.yizhaobao.entity.ShoptypeDAO;
import com.yizhaobao.util.PageService;

public class ShoptypeService {
	
	@Getter @Setter private ShoptypeDAO shoptypeDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Shoptype loadShoptype(Integer id){
		return shoptypeDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveShoptype(Shoptype shoptype) {
		shoptypeDAO.merge(shoptype);
	}

	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeShoptype(Integer id) {
		shoptypeDAO.delete(shoptypeDAO.findById(id));
	}

	/**
	 * 根据类型编码查找商店类型对象
	 */
	@SuppressWarnings("unchecked")
	public Shoptype searchShoptypeByTypeCoding(String typeCoding){
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shoptype as s where s.typeCoding = '"+typeCoding+"'";
		String countHql="select count(*) "+selectHql;
		List<Shoptype> shopTypeList=PageService.searchByPage(selectHql, countHql, params, null, shoptypeDAO);
		return shopTypeList.get(0);
	}
	/**
	 * 查找出属于同一大类的所有小类，参数为大类ID，返回值为小类集合
	 */
	@SuppressWarnings("unchecked")
	public List<Shoptype> searchSmallTypeByBigType(String bigTypeId) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Shoptype as s where s.typeParentId = '"+bigTypeId+"'";
		String countHql="select count(*) "+selectHql;
		List<Shoptype> shopTypeList=PageService.searchByPage(selectHql, countHql, params, null, shoptypeDAO);
		return shopTypeList;
	}
	
	
	
}
