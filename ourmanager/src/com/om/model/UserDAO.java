package com.om.model;

import java.sql.Timestamp;
import java.util.Date;
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

import com.om.dao.IUserDAO;

/**
 * A data access object (DAO) providing persistence and search support for User
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.om.model.User
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class UserDAO  implements IUserDAO{
	private static final Logger log = LoggerFactory.getLogger(UserDAO.class);
	// property constants
	public static final String USER_ID = "userPassword";
	public static final String USER_NAME = "userName";
	public static final String USER_PASSWORD = "userPassword";
	public static final String USER_LIMIT = "userLimit";
	public static final String USER_BALANCE = "userBalance";
	public static final String USER_EMAIL = "userEmail";
	public static final String USER_SEX = "userSex";
	public static final String USER_MOTO = "userMoto";
	public static final String USER_HOMTOWN = "userHomtown";
	public static final String USER_PHOTO_URL = "userPhotoUrl";
	public static final String USER_LOCATION = "userLocation";
	public static final String USER_JOB = "userJob";
	public static final String USER_AGE = "userAge";
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

	public void save(User transientInstance) {
		log.debug("saving User instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(User persistentInstance) {
		log.debug("deleting User instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public User findById(java.lang.Integer id) {
		log.debug("getting User instance with id: " + id);
		try {
			User instance = (User) getCurrentSession().get("com.om.model.User",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}


	public List findByExample(User instance) {
		log.debug("finding User instance by example");
		try {
			List results = getCurrentSession()
					.createCriteria("com.om.model.User")
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
		log.debug("finding User instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from User as model where model."
					+ propertyName + "= '"+value+"'";
 			Query queryObject = getCurrentSession().createQuery(queryString);		
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			re.printStackTrace();
			throw re;
		}
	}
	public User findByUserId(Object userid) {
		return (User)findByProperty(USER_ID, userid).get(0);
	}
	
	public List findByUserName(Object userName) {
		return findByProperty(USER_NAME, userName);
	}

	public List findByUserPassword(Object userPassword) {
		return findByProperty(USER_PASSWORD, userPassword);
	}

	public List findByUserLimit(Object userLimit) {
		return findByProperty(USER_LIMIT, userLimit);
	}

	public List findByUserBalance(Object userBalance) {
		return findByProperty(USER_BALANCE, userBalance);
	}

	public List findByUserEmail(Object userEmail) {
		return findByProperty(USER_EMAIL, userEmail);
	}

	public List findByUserSex(Object userSex) {
		return findByProperty(USER_SEX, userSex);
	}

	public List findByUserMoto(Object userMoto) {
		return findByProperty(USER_MOTO, userMoto);
	}

	public List findByUserHomtown(Object userHomtown) {
		return findByProperty(USER_HOMTOWN, userHomtown);
	}

	public List findByUserPhotoUrl(Object userPhotoUrl) {
		return findByProperty(USER_PHOTO_URL, userPhotoUrl);
	}

	public List findByUserLocation(Object userLocation) {
		return findByProperty(USER_LOCATION, userLocation);
	}

	public List findByUserJob(Object userJob) {
		return findByProperty(USER_JOB, userJob);
	}

	public List findByUserAge(Object userAge) {
		return findByProperty(USER_AGE, userAge);
	}

	public List findByDeleteflag(Object deleteflag) {
		return findByProperty(DELETEFLAG, deleteflag);
	}

	public List findAll() {
		log.debug("finding all User instances");
		try {
			String queryString = "from User";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public User merge(User detachedInstance) {
		log.debug("merging User instance");
		try {
			User result = (User) getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(User instance) {
		log.debug("attaching dirty User instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(User instance) {
		log.debug("attaching clean User instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static UserDAO getFromApplicationContext(ApplicationContext ctx) {
		return (UserDAO) ctx.getBean("UserDAO");
	}

}