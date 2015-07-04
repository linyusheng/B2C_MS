package com.yizhaobao.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Shoptype entity. @author MyEclipse Persistence Tools
 */

public class Shoptype implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeCoding;
	private String typeName;
	private String typeParentId;
	private Set shops = new HashSet(0);

	// Constructors

	/** default constructor */
	public Shoptype() {
	}

	/** full constructor */
	public Shoptype(String typeCoding, String typeName, String typeParentId,
			Set shops) {
		this.typeCoding = typeCoding;
		this.typeName = typeName;
		this.typeParentId = typeParentId;
		this.shops = shops;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeCoding() {
		return this.typeCoding;
	}

	public void setTypeCoding(String typeCoding) {
		this.typeCoding = typeCoding;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeParentId() {
		return this.typeParentId;
	}

	public void setTypeParentId(String typeParentId) {
		this.typeParentId = typeParentId;
	}

	public Set getShops() {
		return this.shops;
	}

	public void setShops(Set shops) {
		this.shops = shops;
	}

}