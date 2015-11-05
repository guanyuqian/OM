package com.om.model;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.om.dao.ILogDAO;

/**
 * A data access object (DAO) providing persistence and search support for Log
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.om.model.Log
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class LogDAO implements ILogDAO{
	private static final Logger log = LoggerFactory.getLogger(LogDAO.class);
	// property constants
	public static final String LOG_TYPE = "logType";
	public static final String LOG_TABLE = "logTable";
	public static final String LOG_DETAIL = "logDetail";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(Log transientInstance) {
		log.debug("saving Log instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Log persistentInstance) {
		log.debug("deleting Log instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Log findById(java.lang.Integer id) {
		log.debug("getting Log instance with id: " + id);
		try {
			Log instance = (Log) getCurrentSession()
					.get("com.om.model.Log", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Log instance) {
		log.debug("finding Log instance by example");
		try {
			List results = getCurrentSession()
					.createCriteria("com.om.model.Log")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Log instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Log as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByLogType(Object logType) {
		return findByProperty(LOG_TYPE, logType);
	}

	public List findByLogTable(Object logTable) {
		return findByProperty(LOG_TABLE, logTable);
	}

	public List findByLogDetail(Object logDetail) {
		return findByProperty(LOG_DETAIL, logDetail);
	}

	public List findAll() {
		log.debug("finding all Log instances");
		try {
			String queryString = "from Log";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Log merge(Log detachedInstance) {
		log.debug("merging Log instance");
		try {
			Log result = (Log) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Log instance) {
		log.debug("attaching dirty Log instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Log instance) {
		log.debug("attaching clean Log instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static LogDAO getFromApplicationContext(ApplicationContext ctx) {
		return (LogDAO) ctx.getBean("LogDAO");
	}
}