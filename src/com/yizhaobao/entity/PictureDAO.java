package com.yizhaobao.entity;

import java.sql.Timestamp;
import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Picture entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.yizhaobao.entity.Picture
 * @author MyEclipse Persistence Tools
 */

public class PictureDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(PictureDAO.class);
	// property constants
	public static final String PICTURE_NAME = "pictureName";
	public static final String PICTURE_URL = "pictureUrl";
	public static final String PICTURE_DESCRIPTION = "pictureDescription";
	public static final String REMARK = "remark";

	protected void initDao() {
		// do nothing
	}

	public void save(Picture transientInstance) {
		log.debug("saving Picture instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Picture persistentInstance) {
		log.debug("deleting Picture instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Picture findById(java.lang.Integer id) {
		log.debug("getting Picture instance with id: " + id);
		try {
			Picture instance = (Picture) getHibernateTemplate().get(
					"com.yizhaobao.entity.Picture", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Picture instance) {
		log.debug("finding Picture instance by example");
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
		log.debug("finding Picture instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Picture as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByPictureName(Object pictureName) {
		return findByProperty(PICTURE_NAME, pictureName);
	}

	public List findByPictureUrl(Object pictureUrl) {
		return findByProperty(PICTURE_URL, pictureUrl);
	}

	public List findByPictureDescription(Object pictureDescription) {
		return findByProperty(PICTURE_DESCRIPTION, pictureDescription);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findAll() {
		log.debug("finding all Picture instances");
		try {
			String queryString = "from Picture";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Picture merge(Picture detachedInstance) {
		log.debug("merging Picture instance");
		try {
			Picture result = (Picture) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Picture instance) {
		log.debug("attaching dirty Picture instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Picture instance) {
		log.debug("attaching clean Picture instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static PictureDAO getFromApplicationContext(ApplicationContext ctx) {
		return (PictureDAO) ctx.getBean("PictureDAO");
	}
}