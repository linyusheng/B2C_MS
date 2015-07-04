package com.yizhaobao.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Community entity. @author MyEclipse Persistence Tools
 */

public class Community implements java.io.Serializable {

	// Fields

	private Integer communityId;
	private User user;
	private String communityName;
	private String communityPhoto;
	private String communityType;
	private String communityIntroduction;
	private String addReason;
	private String communityLabel;
	private Integer communityScore;
	private Integer communityRank;
	private Integer userNum;
	private Integer messageNum;
	private Timestamp addTime;
	private Set messages = new HashSet(0);
	private Set advertiseemerges = new HashSet(0);

	// Constructors

	/** default constructor */
	public Community() {
	}

	/** full constructor */
	public Community(User user, String communityName, String communityPhoto,
			String communityType, String communityIntroduction,
			String addReason, String communityLabel, Integer communityScore,
			Integer communityRank, Integer userNum, Integer messageNum,
			Timestamp addTime, Set messages, Set advertiseemerges) {
		this.user = user;
		this.communityName = communityName;
		this.communityPhoto = communityPhoto;
		this.communityType = communityType;
		this.communityIntroduction = communityIntroduction;
		this.addReason = addReason;
		this.communityLabel = communityLabel;
		this.communityScore = communityScore;
		this.communityRank = communityRank;
		this.userNum = userNum;
		this.messageNum = messageNum;
		this.addTime = addTime;
		this.messages = messages;
		this.advertiseemerges = advertiseemerges;
	}

	// Property accessors

	public Integer getCommunityId() {
		return this.communityId;
	}

	public void setCommunityId(Integer communityId) {
		this.communityId = communityId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCommunityName() {
		return this.communityName;
	}

	public void setCommunityName(String communityName) {
		this.communityName = communityName;
	}

	public String getCommunityPhoto() {
		return this.communityPhoto;
	}

	public void setCommunityPhoto(String communityPhoto) {
		this.communityPhoto = communityPhoto;
	}

	public String getCommunityType() {
		return this.communityType;
	}

	public void setCommunityType(String communityType) {
		this.communityType = communityType;
	}

	public String getCommunityIntroduction() {
		return this.communityIntroduction;
	}

	public void setCommunityIntroduction(String communityIntroduction) {
		this.communityIntroduction = communityIntroduction;
	}

	public String getAddReason() {
		return this.addReason;
	}

	public void setAddReason(String addReason) {
		this.addReason = addReason;
	}

	public String getCommunityLabel() {
		return this.communityLabel;
	}

	public void setCommunityLabel(String communityLabel) {
		this.communityLabel = communityLabel;
	}

	public Integer getCommunityScore() {
		return this.communityScore;
	}

	public void setCommunityScore(Integer communityScore) {
		this.communityScore = communityScore;
	}

	public Integer getCommunityRank() {
		return this.communityRank;
	}

	public void setCommunityRank(Integer communityRank) {
		this.communityRank = communityRank;
	}

	public Integer getUserNum() {
		return this.userNum;
	}

	public void setUserNum(Integer userNum) {
		this.userNum = userNum;
	}

	public Integer getMessageNum() {
		return this.messageNum;
	}

	public void setMessageNum(Integer messageNum) {
		this.messageNum = messageNum;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public Set getMessages() {
		return this.messages;
	}

	public void setMessages(Set messages) {
		this.messages = messages;
	}

	public Set getAdvertiseemerges() {
		return this.advertiseemerges;
	}

	public void setAdvertiseemerges(Set advertiseemerges) {
		this.advertiseemerges = advertiseemerges;
	}

}