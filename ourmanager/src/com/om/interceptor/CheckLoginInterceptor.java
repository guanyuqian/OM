package com.om.interceptor;
import org.apache.struts2.ServletActionContext;

import com.om.model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CheckLoginInterceptor implements Interceptor {

	
	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void init() {
		// TODO Auto-generated method stub
	}
	public String intercept(ActionInvocation arg0) throws Exception {
		String url = "";
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		if(user==null){
			url="login_fail";
		}
		else if(user.getUserName()==null){
			url = "data_ini";
		}
			else{
			url = arg0.invoke();
		}
		return url;
	}
}
