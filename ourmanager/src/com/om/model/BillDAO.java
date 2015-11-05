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

/**
 * A data access object (DAO) providing persistence and search support for Bill
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.om.model.Bill
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class BillDAO {
	private static final Logger log = LoggerFactory.getLogger(BillDAO.class);
	// property constants
	public static final String BILL_NAME = "billName";
	public static final String BILL_MONEY = "billMoney";
	public static final String BILL_TYPE = "billType";
	public static final String BILL_STATUS = "billStatus";
	public static final String BILL_OBJECT = "billObject";
	public static final String DELETEFLAG = "deleteflag";

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

	public void save(Bill transientInstance) {
		log.debug("saving Bill instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Bill persistentInstance) {
		log.debug("deleting Bill instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Bill findById(java.lang.Integer id) {
		log.debug("getting Bill instance with id: " + id);
		try {
			Bill instance = (Bill) getCurrentSession().get("com.om.model.Bill",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Bill instance) {
		log.debug("finding Bill instance by example");
		try {
			List results = getCurrentSession()
					.createCriteria("com.om.model.Bill")
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
		log.debug("finding Bill instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Bill as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBillName(Object billName) {
		return findByProperty(BILL_NAME, billName);
	}

	public List findByBillMoney(Object billMoney) {
		return findByProperty(BILL_MONEY, billMoney);
	}

	public List findByBillType(Object billType) {
		return findByProperty(BILL_TYPE, billType);
	}

	public List findByBillStatus(Object billStatus) {
		return findByProperty(BILL_STATUS, billStatus);
	}

	public List findByBillObject(Object billObject) {
		return findByProperty(BILL_OBJECT, billObject);
	}

	public List findByDeleteflag(Object deleteflag) {
		return findByProperty(DELETEFLAG, deleteflag);
	}

	public List findAll() {
		log.debug("finding all Bill instances");
		try {
			String queryString = "from Bill";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Bill merge(Bill detachedInstance) {
		log.debug("merging Bill instance");
		try {
			Bill result = (Bill) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Bill instance) {
		log.debug("attaching dirty Bill instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Bill instance) {
		log.debug("attaching clean Bill instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static BillDAO getFromApplicationContext(ApplicationContext ctx) {
		return (BillDAO) ctx.getBean("BillDAO");
	}
}