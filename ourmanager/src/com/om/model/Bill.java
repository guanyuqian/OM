package com.om.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Bill entity. @author MyEclipse Persistence Tools
 */

public class Bill implements java.io.Serializable {

	// Fields

	private Integer billid;
	private Om om;
	private String billName;
	private Float billMoney;
	private Integer billType;
	private Timestamp billCreatetime;
	private Integer billStatus;
	private String billObject;
	private Boolean deleteflag;
	private Set purchases = new HashSet(0);

	// Constructors

	/** default constructor */
	public Bill() {
	}

	/** minimal constructor */
	public Bill(Om om, String billName, Float billMoney, Integer billType,
			Timestamp billCreatetime, Integer billStatus, Boolean deleteflag) {
		this.om = om;
		this.billName = billName;
		this.billMoney = billMoney;
		this.billType = billType;
		this.billCreatetime = billCreatetime;
		this.billStatus = billStatus;
		this.deleteflag = deleteflag;
	}

	/** full constructor */
	public Bill(Om om, String billName, Float billMoney, Integer billType,
			Timestamp billCreatetime, Integer billStatus, String billObject,
			Boolean deleteflag, Set purchases) {
		this.om = om;
		this.billName = billName;
		this.billMoney = billMoney;
		this.billType = billType;
		this.billCreatetime = billCreatetime;
		this.billStatus = billStatus;
		this.billObject = billObject;
		this.deleteflag = deleteflag;
		this.purchases = purchases;
	}

	// Property accessors

	public Integer getBillid() {
		return this.billid;
	}

	public void setBillid(Integer billid) {
		this.billid = billid;
	}

	public Om getOm() {
		return this.om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public String getBillName() {
		return this.billName;
	}

	public void setBillName(String billName) {
		this.billName = billName;
	}

	public Float getBillMoney() {
		return this.billMoney;
	}

	public void setBillMoney(Float billMoney) {
		this.billMoney = billMoney;
	}

	public Integer getBillType() {
		return this.billType;
	}

	public void setBillType(Integer billType) {
		this.billType = billType;
	}

	public Timestamp getBillCreatetime() {
		return this.billCreatetime;
	}

	public void setBillCreatetime(Timestamp billCreatetime) {
		this.billCreatetime = billCreatetime;
	}

	public Integer getBillStatus() {
		return this.billStatus;
	}

	public void setBillStatus(Integer billStatus) {
		this.billStatus = billStatus;
	}

	public String getBillObject() {
		return this.billObject;
	}

	public void setBillObject(String billObject) {
		this.billObject = billObject;
	}

	public Boolean getDeleteflag() {
		return this.deleteflag;
	}

	public void setDeleteflag(Boolean deleteflag) {
		this.deleteflag = deleteflag;
	}

	public Set getPurchases() {
		return this.purchases;
	}

	public void setPurchases(Set purchases) {
		this.purchases = purchases;
	}

}