package com.om.service.impl;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.dao.IUserDAO;
import com.om.model.User;
import com.om.service.ILoginService;

public class LoginService implements ILoginService {
	private IUserDAO userdao;

	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	public boolean execute(User user) {
		User result_user = null;
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		try {
			if (user != null) {
				result_user = (User) userdao.findById(user.getUserid());
				if (result_user == null)
					session.setAttribute("LoginMessage", "Id Not Found");
				else if (result_user.getUserPassword().equals(
						user.getUserPassword())) {
					session.removeAttribute("LoginMessage");
					session.removeAttribute("user");
					session.setAttribute("user", result_user);
					return true;
				} else
					session.setAttribute("LoginMessage", "PassWord Error");
			}
		} catch (Exception ex) {
			System.err.println("Login Exception");
			ex.printStackTrace();
		} 
		return false;

	}
}
