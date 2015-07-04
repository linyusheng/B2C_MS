package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.CommunityDAO;
import com.yizhaobao.entity.Community;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class CommunityService {
	
	@Getter @Setter private CommunityDAO communityDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Community loadCommunity(Integer id){
		return communityDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveCommunity(Community community) {
		communityDAO.merge(community);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeCommunity(Integer id) {
		communityDAO.delete(communityDAO.findById(id));
	}
	/**
	 * 查询用户拥有的圈子
	 */
	@SuppressWarnings("unchecked")
	public List<Community> searchUserCommunity(Integer userId,PageBean page){
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Community as c where c.user.userId = '" + userId + "' order by c.addTime desc";
		String countHql = "select count(*) " + selectHql;
		List<Community> list = PageService.searchByPage(selectHql, countHql, params, page, communityDAO);
		return list;
	}
	/**
	 * 查询热门圈子(根据圈子积分高低筛选)
	 */
	@SuppressWarnings("unchecked")
	public List<Community> searchHotCommunity(PageBean page){
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Community as c where order by c.communityScore desc";
		String countHql = "select count(*) " + selectHql;
		List<Community> list = PageService.searchByPage(selectHql, countHql, params, page, communityDAO);
		return list;
	}
	/**
	 * 模式搜索圈子(根据圈子标题关键字)
	 */
	@SuppressWarnings("unchecked")
	public List<Community> modelSearch(String keyword,PageBean page){
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Community as c where c.communityName like '%" + keyword + "%' order by c.communityScore desc";
		String countHql = "select count(*) " + selectHql;
		List<Community> list = PageService.searchByPage(selectHql, countHql, params, page, communityDAO);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
