package com.om.action;

import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.model.Om;
import com.om.model.User;
import com.om.service.IUserInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport {
	private IUserInfoService userInfoService;
	private User user;
	private Date date;
	private Om om;
	private String str;
	private Integer Inte;
	private Boolean b;
	private Short s;
	private float f;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Om getOm() {
		return om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public Integer getInte() {
		return Inte;
	}

	public void setInte(Integer inte) {
		Inte = inte;
	}

	public Boolean getB() {
		return b;
	}

	public void setB(Boolean b) {
		this.b = b;
	}

	public Short getS() {
		return s;
	}

	public void setS(Short s) {
		this.s = s;
	}

	public float getF() {
		return f;
	}

	public void setF(float f) {
		this.f = f;
	}

	public IUserInfoService getUserInfoService() {
		return userInfoService;
	}

	public void setUserInfoService(IUserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String Update() throws Exception
	{
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		
		if (userInfoService.Update(user))
		{
			
			return SUCCESS;
		}
		else
			return ERROR;
	}
	
	
}
