package com.om.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.model.User;
import com.om.service.ILoginService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private ILoginService loginService;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public ILoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

	/***
	 * 前台传入user对象，有Userid和UserPassword
	 * 
	 * 账号错误 返回session.setAttribute("LoginMessage", "NoFoundId"); 密码错误
	 * 返回session.setAttribute("LoginMessage", "PassWordError"); 正确重定向index.jsp
	 */
	public String loginuser() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		if (loginService.execute(user)) {

			user = (User) session.getAttribute("user");
			if (user.getUserName() == null || user.getUserName().equals(""))
				return "data_ini";
			return SUCCESS;
		} else
			return "login_fail";
	}

	public String logout() throws Exception {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		session.removeAttribute("user");
		session.removeAttribute("LoginMessage");
		return "login_fail";
	}
}
