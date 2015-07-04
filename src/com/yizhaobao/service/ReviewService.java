package com.yizhaobao.service;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.ReviewDAO;
import com.yizhaobao.entity.Review;

public class ReviewService {
	//评论
	@Getter @Setter private ReviewDAO reviewDAO;

	/**
	 * 根据主键ID查找对象
	 */
	public Review loadReview(Integer id){
		return reviewDAO.findById(id);
	}
	/**
	 * 执行新增对象或修改对象的保存操作
	 */
	public void saveReview(Review review) {
		reviewDAO.merge(review);
	}
	/**
	 * 根据主键ID删除数据库中对象
	 */
	public void removeReview(Integer id) {
		reviewDAO.delete(reviewDAO.findById(id));
	}

}
