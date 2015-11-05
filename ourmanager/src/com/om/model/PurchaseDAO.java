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

/**
 * A data access object (DAO) providing persistence and search support for
 * Purchase entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.om.model.Purchase
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class PurchaseDAO {
	private static final Logger log = LoggerFactory
			.getLogger(PurchaseDAO.class);
	// property constants
	public static final String PURCHASE_TYPE = "purchaseType";
	public static final String PURCHASE_MONEY = "purchaseMoney";
	public static final String DELETEFLAG = "deleteflag";
	public static final String BILL_OBJECT = "billObject";

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

	public void save(Purchase transientInstance) {
		log.debug("saving Purchase instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Purchase persistentInstance) {
		log.debug("deleting Purchase instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Purchase findById(java.lang.Integer id) {
		log.debug("getting Purchase instance with id: " + id);
		try {
			Purchase instance = (Purchase) getCurrentSession().get(
					"com.om.model.Purchase", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Purchase instance) {
		log.debug("finding Purchase instance by example");
		try {
			List results = getCurrentSession()
					.createCriteria("com.om.model.Purchase")
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
		log.debug("finding Purchase instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Purchase as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPurchaseType(Object purchaseType) {
		return findByProperty(PURCHASE_TYPE, purchaseType);
	}

	public List findByPurchaseMoney(Object purchaseMoney) {
		return findByProperty(PURCHASE_MONEY, purchaseMoney);
	}

	public List findByDeleteflag(Object deleteflag) {
		return findByProperty(DELETEFLAG, deleteflag);
	}

	public List findByBillObject(Object billObject) {
		return findByProperty(BILL_OBJECT, billObject);
	}

	public List findAll() {
		log.debug("finding all Purchase instances");
		try {
			String queryString = "from Purchase";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Purchase merge(Purchase detachedInstance) {
		log.debug("merging Purchase instance");
		try {
			Purchase result = (Purchase) getCurrentSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Purchase instance) {
		log.debug("attaching dirty Purchase instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Purchase instance) {
		log.debug("attaching clean Purchase instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static PurchaseDAO getFromApplicationContext(ApplicationContext ctx) {
		return (PurchaseDAO) ctx.getBean("PurchaseDAO");
	}
}