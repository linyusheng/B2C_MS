package com.yizhaobao.service;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.MessageDAO;
import com.yizhaobao.entity.Message;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.PageService;

public class MessageService {

	@Getter @Setter private MessageDAO messageDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Message loadMessage(Integer id){
		return messageDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveMessage(Message message) {
		messageDAO.merge(message);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeMessage(Integer id) {
		messageDAO.delete(messageDAO.findById(id));
	}
	/**
	 * 查询用户的所有帖子,并按日期降序排序
	 */
	@SuppressWarnings("unchecked")
	public List<Message> searchUserMessage(Integer userId,PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Message as m where m.user.userId = '" + userId + "' order by m.publishTime desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Message> list = PageService.searchByPage(selectHql, countHql, params, page, messageDAO);
		return list;
	}
	/**
	 * 查询热门话题
	 */
	@SuppressWarnings("unchecked")
	public List<Message> searchHotMessage(PageBean page) {
		Object[] params = null;
		String selectHql = null;
		selectHql = "from Message as m where order by m.publishTime desc";
		//创建获取HQL返回记录总行数语句
		String countHql = "select count(*) " + selectHql;
		//执行按条件查询和分页支持
		List<Message> list = PageService.searchByPage(selectHql, countHql, params, page, messageDAO);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
}
