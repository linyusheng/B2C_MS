package com.yizhaobao.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Integer messageId;
	private Community community;
	private User user;
	private String messageName;
	private String information;
	private Timestamp publishTime;
	private String praiseNumber;
	private String reviewNumber;
	private Set reviews = new HashSet(0);

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(Community community, User user, String messageName,
			String information, Timestamp publishTime, String praiseNumber,
			String reviewNumber, Set reviews) {
		this.community = community;
		this.user = user;
		this.messageName = messageName;
		this.information = information;
		this.publishTime = publishTime;
		this.praiseNumber = praiseNumber;
		this.reviewNumber = reviewNumber;
		this.reviews = reviews;
	}

	// Property accessors

	public Integer getMessageId() {
		return this.messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}

	public Community getCommunity() {
		return this.community;
	}

	public void setCommunity(Community community) {
		this.community = community;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMessageName() {
		return this.messageName;
	}

	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}

	public String getInformation() {
		return this.information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public Timestamp getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}

	public String getPraiseNumber() {
		return this.praiseNumber;
	}

	public void setPraiseNumber(String praiseNumber) {
		this.praiseNumber = praiseNumber;
	}

	public String getReviewNumber() {
		return this.reviewNumber;
	}

	public void setReviewNumber(String reviewNumber) {
		this.reviewNumber = reviewNumber;
	}

	public Set getReviews() {
		return this.reviews;
	}

	public void setReviews(Set reviews) {
		this.reviews = reviews;
	}

}