package com.yizhaobao.entity;

import java.math.BigDecimal;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Menu
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.yizhaobao.entity.Menu
 * @author MyEclipse Persistence Tools
 */

public class MenuDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(MenuDAO.class);
	// property constants
	public static final String PID = "pid";
	public static final String TEXT = "text";
	public static final String CHECKED = "checked";
	public static final String STATE = "state";
	public static final String URL = "url";
	public static final String ATTRIBUTES = "attributes";

	protected void initDao() {
		// do nothing
	}

	public void save(Menu transientInstance) {
		log.debug("saving Menu instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Menu persistentInstance) {
		log.debug("deleting Menu instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Menu findById(java.lang.Integer id) {
		log.debug("getting Menu instance with id: " + id);
		try {
			Menu instance = (Menu) getHibernateTemplate().get(
					"com.yizhaobao.entity.Menu", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Menu instance) {
		log.debug("finding Menu instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Menu instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Menu as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPid(Object pid) {
		return findByProperty(PID, pid);
	}

	public List findByText(Object text) {
		return findByProperty(TEXT, text);
	}

	public List findByChecked(Object checked) {
		return findByProperty(CHECKED, checked);
	}

	public List findByState(Object state) {
		return findByProperty(STATE, state);
	}

	public List findByUrl(Object url) {
		return findByProperty(URL, url);
	}

	public List findByAttributes(Object attributes) {
		return findByProperty(ATTRIBUTES, attributes);
	}

	public List findAll() {
		log.debug("finding all Menu instances");
		try {
			String queryString = "from Menu";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Menu merge(Menu detachedInstance) {
		log.debug("merging Menu instance");
		try {
			Menu result = (Menu) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Menu instance) {
		log.debug("attaching dirty Menu instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Menu instance) {
		log.debug("attaching clean Menu instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static MenuDAO getFromApplicationContext(ApplicationContext ctx) {
		return (MenuDAO) ctx.getBean("MenuDAO");
	}
}