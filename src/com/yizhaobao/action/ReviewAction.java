package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Review;
import com.yizhaobao.service.ReviewService;

public class ReviewAction {
	@Getter @Setter private ReviewService reviewService;
	@Getter @Setter private Review review;
	@Getter @Setter private Integer id;

	
}
