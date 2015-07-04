package com.yizhaobao.entity;

import java.sql.Timestamp;

/**
 * Review entity. @author MyEclipse Persistence Tools
 */

public class Review implements java.io.Serializable {

	// Fields

	private Integer reviewId;
	private User user;
	private Message message;
	private String reviewContent;
	private Timestamp reviewTime;

	// Constructors

	/** default constructor */
	public Review() {
	}

	/** full constructor */
	public Review(User user, Message message, String reviewContent,
			Timestamp reviewTime) {
		this.user = user;
		this.message = message;
		this.reviewContent = reviewContent;
		this.reviewTime = reviewTime;
	}

	// Property accessors

	public Integer getReviewId() {
		return this.reviewId;
	}

	public void setReviewId(Integer reviewId) {
		this.reviewId = reviewId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Message getMessage() {
		return this.message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public String getReviewContent() {
		return this.reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Timestamp getReviewTime() {
		return this.reviewTime;
	}

	public void setReviewTime(Timestamp reviewTime) {
		this.reviewTime = reviewTime;
	}

}