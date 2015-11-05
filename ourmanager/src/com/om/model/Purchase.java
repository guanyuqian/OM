package com.om.model;

import java.sql.Timestamp;

/**
 * Purchase entity. @author MyEclipse Persistence Tools
 */

public class Purchase implements java.io.Serializable {

	// Fields

	private Integer purchaseid;
	private Bill bill;
	private User user;
	private Om om;
	private Integer purchaseType;
	private Float purchaseMoney;
	private Timestamp purchaseCreatetime;
	private Boolean deleteflag;
	private String billObject;

	// Constructors

	/** default constructor */
	public Purchase() {
	}

	/** minimal constructor */
	public Purchase(Bill bill, User user, Om om, Integer purchaseType,
			Float purchaseMoney, Timestamp purchaseCreatetime,
			Boolean deleteflag) {
		this.bill = bill;
		this.user = user;
		this.om = om;
		this.purchaseType = purchaseType;
		this.purchaseMoney = purchaseMoney;
		this.purchaseCreatetime = purchaseCreatetime;
		this.deleteflag = deleteflag;
	}

	/** full constructor */
	public Purchase(Bill bill, User user, Om om, Integer purchaseType,
			Float purchaseMoney, Timestamp purchaseCreatetime,
			Boolean deleteflag, String billObject) {
		this.bill = bill;
		this.user = user;
		this.om = om;
		this.purchaseType = purchaseType;
		this.purchaseMoney = purchaseMoney;
		this.purchaseCreatetime = purchaseCreatetime;
		this.deleteflag = deleteflag;
		this.billObject = billObject;
	}

	// Property accessors

	public Integer getPurchaseid() {
		return this.purchaseid;
	}

	public void setPurchaseid(Integer purchaseid) {
		this.purchaseid = purchaseid;
	}

	public Bill getBill() {
		return this.bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Om getOm() {
		return this.om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public Integer getPurchaseType() {
		return this.purchaseType;
	}

	public void setPurchaseType(Integer purchaseType) {
		this.purchaseType = purchaseType;
	}

	public Float getPurchaseMoney() {
		return this.purchaseMoney;
	}

	public void setPurchaseMoney(Float purchaseMoney) {
		this.purchaseMoney = purchaseMoney;
	}

	public Timestamp getPurchaseCreatetime() {
		return this.purchaseCreatetime;
	}

	public void setPurchaseCreatetime(Timestamp purchaseCreatetime) {
		this.purchaseCreatetime = purchaseCreatetime;
	}

	public Boolean getDeleteflag() {
		return this.deleteflag;
	}

	public void setDeleteflag(Boolean deleteflag) {
		this.deleteflag = deleteflag;
	}

	public String getBillObject() {
		return this.billObject;
	}

	public void setBillObject(String billObject) {
		this.billObject = billObject;
	}

}