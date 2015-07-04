package com.yizhaobao.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Shop entity. @author MyEclipse Persistence Tools
 */

public class Shop implements java.io.Serializable {

	// Fields

	private Integer shopId;
	private Shoptype shoptype;
	private User user;
	private String shopName;
	private String shopAddress;
	private String shopPhoto;
	private String shopMap;
	private String shopIntrodution;
	private String shopRanking;
	private String shopLabel;
	private String shopPhone;
	private String comemtCount;
	private String accessCount;
	private String goodsCount;
	private String honorRank;
	private String shopFeature;
	private String remark;
	private String totalComment;
	private String qualityComment;
	private String environmentComment;
	private String serviceComment;
	private Set collections = new HashSet(0);
	private Set advertiseemerges = new HashSet(0);
	private Set goodses = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Shop() {
	}

	/** full constructor */
	public Shop(Shoptype shoptype, User user, String shopName,
			String shopAddress, String shopPhoto, String shopMap,
			String shopIntrodution, String shopRanking, String shopLabel,
			String shopPhone, String comemtCount, String accessCount,
			String goodsCount, String honorRank, String shopFeature,
			String remark, String totalComment, String qualityComment,
			String environmentComment, String serviceComment, Set collections,
			Set advertiseemerges, Set goodses, Set comments) {
		this.shoptype = shoptype;
		this.user = user;
		this.shopName = shopName;
		this.shopAddress = shopAddress;
		this.shopPhoto = shopPhoto;
		this.shopMap = shopMap;
		this.shopIntrodution = shopIntrodution;
		this.shopRanking = shopRanking;
		this.shopLabel = shopLabel;
		this.shopPhone = shopPhone;
		this.comemtCount = comemtCount;
		this.accessCount = accessCount;
		this.goodsCount = goodsCount;
		this.honorRank = honorRank;
		this.shopFeature = shopFeature;
		this.remark = remark;
		this.totalComment = totalComment;
		this.qualityComment = qualityComment;
		this.environmentComment = environmentComment;
		this.serviceComment = serviceComment;
		this.collections = collections;
		this.advertiseemerges = advertiseemerges;
		this.goodses = goodses;
		this.comments = comments;
	}

	// Property accessors

	public Integer getShopId() {
		return this.shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	public Shoptype getShoptype() {
		return this.shoptype;
	}

	public void setShoptype(Shoptype shoptype) {
		this.shoptype = shoptype;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getShopName() {
		return this.shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getShopAddress() {
		return this.shopAddress;
	}

	public void setShopAddress(String shopAddress) {
		this.shopAddress = shopAddress;
	}

	public String getShopPhoto() {
		return this.shopPhoto;
	}

	public void setShopPhoto(String shopPhoto) {
		this.shopPhoto = shopPhoto;
	}

	public String getShopMap() {
		return this.shopMap;
	}

	public void setShopMap(String shopMap) {
		this.shopMap = shopMap;
	}

	public String getShopIntrodution() {
		return this.shopIntrodution;
	}

	public void setShopIntrodution(String shopIntrodution) {
		this.shopIntrodution = shopIntrodution;
	}

	public String getShopRanking() {
		return this.shopRanking;
	}

	public void setShopRanking(String shopRanking) {
		this.shopRanking = shopRanking;
	}

	public String getShopLabel() {
		return this.shopLabel;
	}

	public void setShopLabel(String shopLabel) {
		this.shopLabel = shopLabel;
	}

	public String getShopPhone() {
		return this.shopPhone;
	}

	public void setShopPhone(String shopPhone) {
		this.shopPhone = shopPhone;
	}

	public String getComemtCount() {
		return this.comemtCount;
	}

	public void setComemtCount(String comemtCount) {
		this.comemtCount = comemtCount;
	}

	public String getAccessCount() {
		return this.accessCount;
	}

	public void setAccessCount(String accessCount) {
		this.accessCount = accessCount;
	}

	public String getGoodsCount() {
		return this.goodsCount;
	}

	public void setGoodsCount(String goodsCount) {
		this.goodsCount = goodsCount;
	}

	public String getHonorRank() {
		return this.honorRank;
	}

	public void setHonorRank(String honorRank) {
		this.honorRank = honorRank;
	}

	public String getShopFeature() {
		return this.shopFeature;
	}

	public void setShopFeature(String shopFeature) {
		this.shopFeature = shopFeature;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTotalComment() {
		return this.totalComment;
	}

	public void setTotalComment(String totalComment) {
		this.totalComment = totalComment;
	}

	public String getQualityComment() {
		return this.qualityComment;
	}

	public void setQualityComment(String qualityComment) {
		this.qualityComment = qualityComment;
	}

	public String getEnvironmentComment() {
		return this.environmentComment;
	}

	public void setEnvironmentComment(String environmentComment) {
		this.environmentComment = environmentComment;
	}

	public String getServiceComment() {
		return this.serviceComment;
	}

	public void setServiceComment(String serviceComment) {
		this.serviceComment = serviceComment;
	}

	public Set getCollections() {
		return this.collections;
	}

	public void setCollections(Set collections) {
		this.collections = collections;
	}

	public Set getAdvertiseemerges() {
		return this.advertiseemerges;
	}

	public void setAdvertiseemerges(Set advertiseemerges) {
		this.advertiseemerges = advertiseemerges;
	}

	public Set getGoodses() {
		return this.goodses;
	}

	public void setGoodses(Set goodses) {
		this.goodses = goodses;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}