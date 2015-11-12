package com.om.action;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import java.sql.Timestamp;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.om.model.Om;
import com.om.model.OmDAO;
import com.om.model.User;
import com.om.service.IOmService;

public class OmAction  extends ActionSupport {
	IOmService omService;
	Om om;
	User user;
	Integer inte;
	Timestamp tsp;
	public Timestamp getTsp() {
		return tsp;
	}
	public void setTsp(Timestamp tsp) {
		this.tsp = tsp;
	}
	public Integer getInte() {
		return inte;
	}
	public void setInte(Integer inte) {
		this.inte = inte;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	String province;
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}

	private String uniPassword;//初始密码
	private int	superManagerCount;//超级管理员数量
	public int getSuperManagerCount() {
		return superManagerCount;
	}
	///
	public void setSuperManagerCount(int superManagerCount) {
		this.superManagerCount = superManagerCount;
	}
	public int getFinanceManagerCount() {
		return financeManagerCount;
	}
	public void setFinanceManagerCount(int financeManagerCount) {
		this.financeManagerCount = financeManagerCount;
	}
	public int getManagerCount() {
		return managerCount;
	}
	public void setManagerCount(int managerCount) {
		this.managerCount = managerCount;
	}
////

	private int	financeManagerCount;//财务管理员数量
	private int	managerCount;//管理员数量

	public Om getOm() {
		return om;
	}
	public void setOm(Om om) {
		this.om = om;
	}
	public String getUniPassword() {
		return uniPassword;
	}
	public void setUniPassword(String uniPassword) {
		this.uniPassword = uniPassword;
	}
	public IOmService getOmService() {
		return omService;
	}
	public void setOmService(IOmService omService) {
		this.omService = omService;
	}
	
	public String test() throws Exception{
		om=new Om();
		String asdf="asdf";
		return SUCCESS;
	}
	public String buildOM() throws Exception {
		Om newom=new Om(om);
		if (omService.add(newom,uniPassword,superManagerCount,financeManagerCount,managerCount))
			return SUCCESS;
		else
			return ERROR;
	}
	public String updateOM() throws Exception
	{
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		if (omService.update(om))
		{
			om=(Om)session.getAttribute("om");
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
