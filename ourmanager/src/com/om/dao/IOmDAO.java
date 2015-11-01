package com.om.dao;

import java.util.List;

import com.om.model.Om;
import com.om.model.User;

public interface IOmDAO {
	public void save(Om transientInstance);
	public List findByOmName(Object omName) ;
	public void attachDirty(Om instance) ;
}
