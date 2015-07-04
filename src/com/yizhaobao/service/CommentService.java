package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Comment;
import com.yizhaobao.entity.CommentDAO;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class CommentService {

	@Getter @Setter private CommentDAO commentDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Comment loadComment(Integer id){
		return commentDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveComment(Comment comment) {
		commentDAO.merge(comment);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeComment(Integer id) {
		commentDAO.delete(commentDAO.findById(id));
	}
	/**
	 * 查询出某个用户的所有点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchUserComment(Integer id,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.user.userId = '" + id + "' order by c.commentDate desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 查询出某个商店的所有点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchShopComment(Integer shopId,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.shop.shopId = '" + shopId + "' order by c.commentDate desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 查询出某一天的所有点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchDateComment(String date,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.commentDate = '" + date + "' order by c.commentDate desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 查询出用户前5条点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchUserFiveComment(Integer userId,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.user.userId = '" + userId + "' order by c.commentDate desc limit 0,5";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 查询出商户前5条点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchShopFiveComment(Integer shopId,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.shop.shopId = '" + shopId + "' order by c.commentDate desc limit 0,5";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 根据等级，查询出该商店不同等级的点评
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchRankComment(Integer shopId,String rank,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c where c.shop.shopId = '" + shopId + "' and c.commentTotal = '" + rank + "' order by c.commentDate desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
	/**
	 * 查询出最新发表的5条点评,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Comment> searchNewFiveComment(PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Comment as c order by c.commentId desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Comment> list = PageService.searchByPage(selectHql, countHql, params, page, commentDAO);
		return list;
	}
}
