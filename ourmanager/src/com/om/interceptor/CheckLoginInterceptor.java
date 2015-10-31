package com.om.interceptor;
import org.apache.struts2.ServletActionContext;

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
		if(null!=ServletActionContext.getRequest().getSession().getAttribute("user")){
			url = arg0.invoke();
		}else{
			url="login_fail";
		}
		return url;
	}
}
