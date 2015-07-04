package com.yizhaobao.entity;

import java.sql.Timestamp;

/**
 * Picture entity. @author MyEclipse Persistence Tools
 */

public class Picture implements java.io.Serializable {

	// Fields

	private Integer pictureId;
	private User user;
	private String pictureName;
	private String pictureUrl;
	private String pictureDescription;
	private Timestamp uploadTime;
	private String remark;

	// Constructors

	/** default constructor */
	public Picture() {
	}

	/** full constructor */
	public Picture(User user, String pictureName, String pictureUrl,
			String pictureDescription, Timestamp uploadTime, String remark) {
		this.user = user;
		this.pictureName = pictureName;
		this.pictureUrl = pictureUrl;
		this.pictureDescription = pictureDescription;
		this.uploadTime = uploadTime;
		this.remark = remark;
	}

	// Property accessors

	public Integer getPictureId() {
		return this.pictureId;
	}

	public void setPictureId(Integer pictureId) {
		this.pictureId = pictureId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPictureName() {
		return this.pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public String getPictureUrl() {
		return this.pictureUrl;
	}

	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}

	public String getPictureDescription() {
		return this.pictureDescription;
	}

	public void setPictureDescription(String pictureDescription) {
		this.pictureDescription = pictureDescription;
	}

	public Timestamp getUploadTime() {
		return this.uploadTime;
	}

	public void setUploadTime(Timestamp uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}