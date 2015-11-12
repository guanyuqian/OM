package com.om.service.impl;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import antlr.collections.List;

import com.om.dao.IOmDAO;
import com.om.dao.IUserDAO;
import com.om.model.Om;
import com.om.model.OmDAO;
import com.om.model.User;
import com.om.service.IOmService;

public class OmService implements IOmService {
	private IOmDAO omdao;
	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private IUserDAO userdao;
	private Om om;
	
	public Om getOm() {
		return om;
	}

	public void setOm(Om om) {
		this.om = om;
	}

	public IOmDAO getOmdao() {
		return omdao;
	}

	public void setOmdao(IOmDAO omdao) {
		this.omdao = omdao;
	}

	public IUserDAO getUserdao() {
		return userdao;
	}

	public void setUserdao(IUserDAO userdao) {
		this.userdao = userdao;
	}

	@Override
	public boolean add(Om om, String uniPassword, int superManagerCount,
			int financeManagerCount, int managerCount) {
		try {
			omdao.save(om);
			int headcount = om.getHeadcount();// set new user according the
											// headcount(no null);
			int omid = om.getOmid();
			for (int i = 1; i <= headcount; i++) {
				User newUser = new User();
				newUser.setUserid(omid*1000 + i);// id前缀相同
				newUser.setUserPassword(uniPassword);
				newUser.setDeleteflag(false);
				newUser.setOm(om);
				newUser.setUserBalance((float) 0);
				// 设置权限，前几个是super。。以此类推
				if (i <= superManagerCount)
					newUser.setUserLimit(User.Limit.SuperManager);
				else if (i <= financeManagerCount + superManagerCount)
					newUser.setUserLimit(User.Limit.FinanceManager);
				else if (i <= managerCount + financeManagerCount
						+ superManagerCount)
					newUser.setUserLimit(User.Limit.Manager);
				else
					newUser.setUserLimit(User.Limit.Member);
				userdao.save(newUser);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean test() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Om om) {
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request)
				.getSession();
		try{
			Om newom =(Om) session.getAttribute("om");
			newom.setOmid(om.getOmid());
			newom.setOmName(om.getOmName());
			newom.setOmLogoUrl(om.getOmLogoUrl());
			newom.setHeadcount(om.getHeadcount());
			newom.setOmDes(om.getOmDes());
			newom.setOmLocation(om.getOmLocation());
			newom.setOmBank(om.getOmBank());
			newom.setOmCity(om.getOmCity());
			newom.setOmCounty(om.getOmCounty());
			newom.setOmProvince(om.getOmProvince());
			omdao.attachDirty(newom);
				
		}catch(Exception ex)
		{
			ex.printStackTrace();
			System.err.println("更新宿舍出现错误  未进入OmService");
			return false;
		}
		return true;
	}

}
