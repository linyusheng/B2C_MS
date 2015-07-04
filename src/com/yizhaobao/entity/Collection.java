package com.yizhaobao.entity;

import java.sql.Timestamp;

/**
 * Collection entity. @author MyEclipse Persistence Tools
 */

public class Collection implements java.io.Serializable {

	// Fields

	private Integer collectionId;
	private Shop shop;
	private User user;
	private Timestamp collectionTime;
	private String collectionExplain;
	private String collectionRemark;

	// Constructors

	/** default constructor */
	public Collection() {
	}

	/** minimal constructor */
	public Collection(User user) {
		this.user = user;
	}

	/** full constructor */
	public Collection(Shop shop, User user, Timestamp collectionTime,
			String collectionExplain, String collectionRemark) {
		this.shop = shop;
		this.user = user;
		this.collectionTime = collectionTime;
		this.collectionExplain = collectionExplain;
		this.collectionRemark = collectionRemark;
	}

	// Property accessors

	public Integer getCollectionId() {
		return this.collectionId;
	}

	public void setCollectionId(Integer collectionId) {
		this.collectionId = collectionId;
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

	public Timestamp getCollectionTime() {
		return this.collectionTime;
	}

	public void setCollectionTime(Timestamp collectionTime) {
		this.collectionTime = collectionTime;
	}

	public String getCollectionExplain() {
		return this.collectionExplain;
	}

	public void setCollectionExplain(String collectionExplain) {
		this.collectionExplain = collectionExplain;
	}

	public String getCollectionRemark() {
		return this.collectionRemark;
	}

	public void setCollectionRemark(String collectionRemark) {
		this.collectionRemark = collectionRemark;
	}

}