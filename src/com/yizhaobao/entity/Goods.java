package com.yizhaobao.entity;

import java.sql.Timestamp;

/**
 * Goods entity. @author MyEclipse Persistence Tools
 */

public class Goods implements java.io.Serializable {

	// Fields

	private Integer goodsId;
	private Shop shop;
	private String goodsName;
	private String goodsPicture;
	private String goodsType;
	private Float goodsPrice;
	private String goodsDescribe;
	private String goodsStatus;
	private String goodsRepertory;
	private Timestamp putTime;

	// Constructors

	/** default constructor */
	public Goods() {
	}

	/** full constructor */
	public Goods(Shop shop, String goodsName, String goodsPicture,
			String goodsType, Float goodsPrice, String goodsDescribe,
			String goodsStatus, String goodsRepertory, Timestamp putTime) {
		this.shop = shop;
		this.goodsName = goodsName;
		this.goodsPicture = goodsPicture;
		this.goodsType = goodsType;
		this.goodsPrice = goodsPrice;
		this.goodsDescribe = goodsDescribe;
		this.goodsStatus = goodsStatus;
		this.goodsRepertory = goodsRepertory;
		this.putTime = putTime;
	}

	// Property accessors

	public Integer getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public String getGoodsName() {
		return this.goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsPicture() {
		return this.goodsPicture;
	}

	public void setGoodsPicture(String goodsPicture) {
		this.goodsPicture = goodsPicture;
	}

	public String getGoodsType() {
		return this.goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	public Float getGoodsPrice() {
		return this.goodsPrice;
	}

	public void setGoodsPrice(Float goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsDescribe() {
		return this.goodsDescribe;
	}

	public void setGoodsDescribe(String goodsDescribe) {
		this.goodsDescribe = goodsDescribe;
	}

	public String getGoodsStatus() {
		return this.goodsStatus;
	}

	public void setGoodsStatus(String goodsStatus) {
		this.goodsStatus = goodsStatus;
	}

	public String getGoodsRepertory() {
		return this.goodsRepertory;
	}

	public void setGoodsRepertory(String goodsRepertory) {
		this.goodsRepertory = goodsRepertory;
	}

	public Timestamp getPutTime() {
		return this.putTime;
	}

	public void setPutTime(Timestamp putTime) {
		this.putTime = putTime;
	}

}