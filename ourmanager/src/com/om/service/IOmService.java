package com.om.service;

import com.om.model.Om;
import com.om.model.User;

public interface IOmService {
	public boolean test();

	public boolean add(Om newom, String uniPassword, int superManagerCount,
			int financeManagerCount, int managerCount);
	
	public boolean update(User user);
}
