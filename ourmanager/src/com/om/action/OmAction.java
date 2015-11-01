package com.om.action;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.om.model.Om;
import com.om.model.OmDAO;
import com.om.model.User;
import com.om.service.IOmService;

public class OmAction  extends ActionSupport {
	IOmService omService;
	Om om;
<<<<<<< HEAD
	User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
=======
	String province;
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
>>>>>>> 7e4f3ce9ab4fdba9e4900697fa10acaf09be16fb
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
	public String updateOM()
	{
		if(omService.update(user))
		{
			return SUCCESS;
		}
		else
		{
			return ERROR;
		}
	}
}
