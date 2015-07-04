package com.yizhaobao.entity;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Advertiseemerge entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.yizhaobao.entity.Advertiseemerge
 * @author MyEclipse Persistence Tools
 */

public class AdvertiseemergeDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(AdvertiseemergeDAO.class);
	// property constants
	public static final String ADVERTISE_NAME = "advertiseName";
	public static final String ADVERTISE_TYPE = "advertiseType";
	public static final String ADVERTISE_PATH = "advertisePath";

	protected void initDao() {
		// do nothing
	}

	public void save(Advertiseemerge transientInstance) {
		log.debug("saving Advertiseemerge instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Advertiseemerge persistentInstance) {
		log.debug("deleting Advertiseemerge instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Advertiseemerge findById(java.lang.Integer id) {
		log.debug("getting Advertiseemerge instance with id: " + id);
		try {
			Advertiseemerge instance = (Advertiseemerge) getHibernateTemplate()
					.get("com.yizhaobao.entity.Advertiseemerge", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Advertiseemerge instance) {
		log.debug("finding Advertiseemerge instance by example");
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
		log.debug("finding Advertiseemerge instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from Advertiseemerge as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByAdvertiseName(Object advertiseName) {
		return findByProperty(ADVERTISE_NAME, advertiseName);
	}

	public List findByAdvertiseType(Object advertiseType) {
		return findByProperty(ADVERTISE_TYPE, advertiseType);
	}

	public List findByAdvertisePath(Object advertisePath) {
		return findByProperty(ADVERTISE_PATH, advertisePath);
	}

	public List findAll() {
		log.debug("finding all Advertiseemerge instances");
		try {
			String queryString = "from Advertiseemerge";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Advertiseemerge merge(Advertiseemerge detachedInstance) {
		log.debug("merging Advertiseemerge instance");
		try {
			Advertiseemerge result = (Advertiseemerge) getHibernateTemplate()
					.merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Advertiseemerge instance) {
		log.debug("attaching dirty Advertiseemerge instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Advertiseemerge instance) {
		log.debug("attaching clean Advertiseemerge instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static AdvertiseemergeDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (AdvertiseemergeDAO) ctx.getBean("AdvertiseemergeDAO");
	}
}