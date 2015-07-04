package com.yizhaobao.service;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Advertiseemerge;
import com.yizhaobao.entity.AdvertiseemergeDAO;

public class AdvertiseemergeService {
	//广告展现
	@Getter @Setter private AdvertiseemergeDAO advertiseemergeDAO;

	/*
	 * 根据主键ID查找对象
	 */
	public Advertiseemerge loadAdvertiseemerge(Integer id){
		return advertiseemergeDAO.findById(id);
	}
	/*
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveAdvertiseemerge(Advertiseemerge advertiseemerge) {
		advertiseemergeDAO.merge(advertiseemerge);
	}
	/*
	 * 根据主键ID删除数据库中对象
	 */
	public void removeAdvertiseemerge(Integer id) {
		advertiseemergeDAO.delete(advertiseemergeDAO.findById(id));
	}
}
