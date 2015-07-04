package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Goods;
import com.yizhaobao.entity.GoodsDAO;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class GoodsService {
	//商品
	@Getter @Setter private GoodsDAO goodsDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Goods loadGoods(Integer id){
		return goodsDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveGoods(Goods goods) {
		goodsDAO.merge(goods);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeGoods(Integer id) {
		goodsDAO.delete(goodsDAO.findById(id));
	}
	/**
	 * 查找商店的所有商品
	 */
	@SuppressWarnings("unchecked")
	public List<Goods> searchAllGoods(Integer shopId,PageBean page) {
		Object[] params=null;
		String selectHql=null;
		selectHql="from Goods as g where g.shop.shopId = '"+shopId+"'";
		String countHql="select count(*) "+selectHql;
		List<Goods> List = PageService.searchByPage(selectHql, countHql, params, page, goodsDAO);
		return List;
	}
	/**
	 * 
	 */
}
