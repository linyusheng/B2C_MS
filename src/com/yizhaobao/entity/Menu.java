package com.yizhaobao.entity;

import java.math.BigDecimal;

/**
 * Menu entity. @author MyEclipse Persistence Tools
 */

public class Menu implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer pid;
	private String text;
	private String checked;
	private String state;
	private String url;
	private BigDecimal seq;
	private String attributes;

	// Constructors

	/** default constructor */
	public Menu() {
	}

	/** full constructor */
	public Menu(Integer pid, String text, String checked, String state,
			String url, BigDecimal seq, String attributes) {
		this.pid = pid;
		this.text = text;
		this.checked = checked;
		this.state = state;
		this.url = url;
		this.seq = seq;
		this.attributes = attributes;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getChecked() {
		return this.checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public BigDecimal getSeq() {
		return this.seq;
	}

	public void setSeq(BigDecimal seq) {
		this.seq = seq;
	}

	public String getAttributes() {
		return this.attributes;
	}

	public void setAttributes(String attributes) {
		this.attributes = attributes;
	}

}