package com.om.dao;

import java.util.List;

import com.om.model.Om;

public interface IOmDAO {
	public void save(Om transientInstance);
	public List findByOmName(Object omName) ;
}
