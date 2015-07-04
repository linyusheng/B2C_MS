package com.yizhaobao.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Role role;
	private String userName;
	private String password;
	private String sex;
	private String address;
	private String phone;
	private String email;
	private String rank;
	private String score;
	private String photo;
	private String realName;
	private String identify;
	private String signNumber;
	private Timestamp lastLoginTime;
	private Timestamp registerTime;
	private String qq;
	private Date birthday;
	private String hobby;
	private String signature;
	private String position;
	private String income;
	private String introduction;
	private String maritalStatus;
	private Set shops = new HashSet(0);
	private Set pictures = new HashSet(0);
	private Set messages = new HashSet(0);
	private Set reviews = new HashSet(0);
	private Set collections = new HashSet(0);
	private Set communities = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(Role role, String userName, String password, String sex,
			String address, String phone, String email, String rank,
			String score, String photo, String realName, String identify,
			String signNumber, Timestamp lastLoginTime, Timestamp registerTime,
			String qq, Date birthday, String hobby, String signature,
			String position, String income, String introduction,
			String maritalStatus, Set shops, Set pictures, Set messages,
			Set reviews, Set collections, Set communities, Set comments) {
		this.role = role;
		this.userName = userName;
		this.password = password;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.rank = rank;
		this.score = score;
		this.photo = photo;
		this.realName = realName;
		this.identify = identify;
		this.signNumber = signNumber;
		this.lastLoginTime = lastLoginTime;
		this.registerTime = registerTime;
		this.qq = qq;
		this.birthday = birthday;
		this.hobby = hobby;
		this.signature = signature;
		this.position = position;
		this.income = income;
		this.introduction = introduction;
		this.maritalStatus = maritalStatus;
		this.shops = shops;
		this.pictures = pictures;
		this.messages = messages;
		this.reviews = reviews;
		this.collections = collections;
		this.communities = communities;
		this.comments = comments;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getIdentify() {
		return this.identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	public String getSignNumber() {
		return this.signNumber;
	}

	public void setSignNumber(String signNumber) {
		this.signNumber = signNumber;
	}

	public Timestamp getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public Timestamp getRegisterTime() {
		return this.registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getHobby() {
		return this.hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getSignature() {
		return this.signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getIncome() {
		return this.income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getMaritalStatus() {
		return this.maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public Set getShops() {
		return this.shops;
	}

	public void setShops(Set shops) {
		this.shops = shops;
	}

	public Set getPictures() {
		return this.pictures;
	}

	public void setPictures(Set pictures) {
		this.pictures = pictures;
	}

	public Set getMessages() {
		return this.messages;
	}

	public void setMessages(Set messages) {
		this.messages = messages;
	}

	public Set getReviews() {
		return this.reviews;
	}

	public void setReviews(Set reviews) {
		this.reviews = reviews;
	}

	public Set getCollections() {
		return this.collections;
	}

	public void setCollections(Set collections) {
		this.collections = collections;
	}

	public Set getCommunities() {
		return this.communities;
	}

	public void setCommunities(Set communities) {
		this.communities = communities;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}