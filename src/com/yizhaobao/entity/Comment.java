package com.yizhaobao.entity;

import java.sql.Timestamp;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer commentId;
	private Shop shop;
	private User user;
	private String commentInfo;
	private String commentTotal;
	private String commentMass;
	private String commentEnvironment;
	private String commetntService;
	private Timestamp commentDate;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** minimal constructor */
	public Comment(Shop shop, User user) {
		this.shop = shop;
		this.user = user;
	}

	/** full constructor */
	public Comment(Shop shop, User user, String commentInfo,
			String commentTotal, String commentMass, String commentEnvironment,
			String commetntService, Timestamp commentDate) {
		this.shop = shop;
		this.user = user;
		this.commentInfo = commentInfo;
		this.commentTotal = commentTotal;
		this.commentMass = commentMass;
		this.commentEnvironment = commentEnvironment;
		this.commetntService = commetntService;
		this.commentDate = commentDate;
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCommentInfo() {
		return this.commentInfo;
	}

	public void setCommentInfo(String commentInfo) {
		this.commentInfo = commentInfo;
	}

	public String getCommentTotal() {
		return this.commentTotal;
	}

	public void setCommentTotal(String commentTotal) {
		this.commentTotal = commentTotal;
	}

	public String getCommentMass() {
		return this.commentMass;
	}

	public void setCommentMass(String commentMass) {
		this.commentMass = commentMass;
	}

	public String getCommentEnvironment() {
		return this.commentEnvironment;
	}

	public void setCommentEnvironment(String commentEnvironment) {
		this.commentEnvironment = commentEnvironment;
	}

	public String getCommetntService() {
		return this.commetntService;
	}

	public void setCommetntService(String commetntService) {
		this.commetntService = commetntService;
	}

	public Timestamp getCommentDate() {
		return this.commentDate;
	}

	public void setCommentDate(Timestamp commentDate) {
		this.commentDate = commentDate;
	}

}