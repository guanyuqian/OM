package com.om.model;

import java.sql.Timestamp;

/**
 * Log entity. @author MyEclipse Persistence Tools
 */

public class Log implements java.io.Serializable {

	// Fields

	private Integer logid;
	private User user;
	private Om om;
	private String logType;
	private String logTable;
	private String logDetail;
	private Timestamp logCreatetime;

	// Constructors

	/** default constructor */
	public Log() {
	}

	/** full constructor */
	public Log(User user, Om om, String logType, String logTable,
			String logDetail, Timestamp logCreatetime) {
		this.user = user;
		this.om = om;
		this.logType = logType;
		this.logTable = logTable;
		this.logDetail = logDetail;
		this.logCreatetime = logCreatetime;
	}

	// Property accessors

	public Integer getLogid() {
		return this.logid;
	}

	public void setLogid(Integer logid) {
		this.logid = logid;
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

	public String getLogType() {
		return this.logType;
	}

	public void setLogType(String logType) {
		this.logType = logType;
	}

	public String getLogTable() {
		return this.logTable;
	}

	public void setLogTable(String logTable) {
		this.logTable = logTable;
	}

	public String getLogDetail() {
		return this.logDetail;
	}

	public void setLogDetail(String logDetail) {
		this.logDetail = logDetail;
	}

	public Timestamp getLogCreatetime() {
		return this.logCreatetime;
	}

	public void setLogCreatetime(Timestamp logCreatetime) {
		this.logCreatetime = logCreatetime;
	}

}