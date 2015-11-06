package com.om.model;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.om.dao.IOmDAO;

/**
 * A data access object (DAO) providing persistence and search support for Om
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.om.model.Om
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class OmDAO implements IOmDAO{
	private static final Logger log = LoggerFactory.getLogger(OmDAO.class);
	// property constants
	public static final String OM_NAME = "omName";
	public static final String OM_DES = "omDes";
	public static final String OM_LOGO_URL = "omLogoUrl";
	public static final String OM_CITY = "omCity";
	public static final String OM_COUNTY = "omCounty";
	public static final String OM_PROVINCE = "omProvince";
	public static final String OM_LOCATION = "omLocation";
	public static final String OM_MONEY = "omMoney";
	public static final String OM_BANK = "omBank";
	public static final String HEADCOUNT = "headcount";

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

	public void save(Om transientInstance) {
		log.debug("saving Om instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Om persistentInstance) {
		log.debug("deleting Om instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Om findById(java.lang.Integer id) {
		log.debug("getting Om instance with id: " + id);
		try {
			Om instance = (Om) getCurrentSession().get("com.om.model.Om", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Om instance) {
		log.debug("finding Om instance by example");
		try {
			List results = getCurrentSession()
					.createCriteria("com.om.model.Om")
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
		log.debug("finding Om instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Om as model where model." + propertyName
					+ "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByOmName(Object omName) {
		return findByProperty(OM_NAME, omName);
	}

	public List findByOmDes(Object omDes) {
		return findByProperty(OM_DES, omDes);
	}

	public List findByOmLogoUrl(Object omLogoUrl) {
		return findByProperty(OM_LOGO_URL, omLogoUrl);
	}

	public List findByOmCity(Object omCity) {
		return findByProperty(OM_CITY, omCity);
	}

	public List findByOmCounty(Object omCounty) {
		return findByProperty(OM_COUNTY, omCounty);
	}

	public List findByOmProvince(Object omProvince) {
		return findByProperty(OM_PROVINCE, omProvince);
	}

	public List findByOmLocation(Object omLocation) {
		return findByProperty(OM_LOCATION, omLocation);
	}

	public List findByOmMoney(Object omMoney) {
		return findByProperty(OM_MONEY, omMoney);
	}

	public List findByOmBank(Object omBank) {
		return findByProperty(OM_BANK, omBank);
	}

	public List findByHeadcount(Object headcount) {
		return findByProperty(HEADCOUNT, headcount);
	}

	public List findAll() {
		log.debug("finding all Om instances");
		try {
			String queryString = "from Om";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Om merge(Om detachedInstance) {
		log.debug("merging Om instance");
		try {
			Om result = (Om) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Om instance) {
		log.debug("attaching dirty Om instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Om instance) {
		log.debug("attaching clean Om instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static OmDAO getFromApplicationContext(ApplicationContext ctx) {
		return (OmDAO) ctx.getBean("OmDAO");
	}
}