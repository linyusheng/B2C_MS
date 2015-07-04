package com.yizhaobao.entity;

/**
 * Advertiseemerge entity. @author MyEclipse Persistence Tools
 */

public class Advertiseemerge implements java.io.Serializable {

	// Fields

	private Integer advertiseId;
	private Community community;
	private Shop shop;
	private String advertiseName;
	private String advertiseType;
	private String advertisePath;

	// Constructors

	/** default constructor */
	public Advertiseemerge() {
	}

	/** full constructor */
	public Advertiseemerge(Community community, Shop shop,
			String advertiseName, String advertiseType, String advertisePath) {
		this.community = community;
		this.shop = shop;
		this.advertiseName = advertiseName;
		this.advertiseType = advertiseType;
		this.advertisePath = advertisePath;
	}

	// Property accessors

	public Integer getAdvertiseId() {
		return this.advertiseId;
	}

	public void setAdvertiseId(Integer advertiseId) {
		this.advertiseId = advertiseId;
	}

	public Community getCommunity() {
		return this.community;
	}

	public void setCommunity(Community community) {
		this.community = community;
	}

	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public String getAdvertiseName() {
		return this.advertiseName;
	}

	public void setAdvertiseName(String advertiseName) {
		this.advertiseName = advertiseName;
	}

	public String getAdvertiseType() {
		return this.advertiseType;
	}

	public void setAdvertiseType(String advertiseType) {
		this.advertiseType = advertiseType;
	}

	public String getAdvertisePath() {
		return this.advertisePath;
	}

	public void setAdvertisePath(String advertisePath) {
		this.advertisePath = advertisePath;
	}

}