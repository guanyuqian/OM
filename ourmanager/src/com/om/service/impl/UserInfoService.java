package com.om.service.impl;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.dao.IUserDAO;
import com.om.model.User;
import com.om.service.IUserInfoService;


public class UserInfoService implements IUserInfoService{
	
	private IUserDAO userdao;
	
	
	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}
	
	
	@Override
	public boolean Update(User user) {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request)
				.getSession();
		try{
			User newuser=(User) session.getAttribute("user");
			newuser.setUserEmail(user.getUserEmail());
			newuser.setUserName(user.getUserName());
			newuser.setUserSex(user.getUserSex());
			newuser.setUserAge(user.getUserAge());
			newuser.setUserBirthday(user.getUserBirthday());
			newuser.setUserMoto(user.getUserEmail());
			newuser.setUserHomtown(user.getUserHomtown());
			newuser.setUserLocation(user.getUserLocation());
			newuser.setUserJob(user.getUserJob());
			userdao.attachDirty(newuser);
		}catch(Exception ex)
		{
			ex.printStackTrace();
			System.err.println("更新出现错误");
			return false;
		}
		return true;
	}

}
