package com.yizhaobao.entity;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Community entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.yizhaobao.entity.Community
 * @author MyEclipse Persistence Tools
 */

public class CommunityDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(CommunityDAO.class);
	// property constants
	public static final String COMMUNITY_NAME = "communityName";
	public static final String COMMUNITY_PHOTO = "communityPhoto";
	public static final String COMMUNITY_TYPE = "communityType";
	public static final String COMMUNITY_INTRODUCTION = "communityIntroduction";
	public static final String ADD_REASON = "addReason";
	public static final String COMMUNITY_LABEL = "communityLabel";
	public static final String COMMUNITY_SCORE = "communityScore";
	public static final String COMMUNITY_RANK = "communityRank";
	public static final String USER_NUM = "userNum";
	public static final String MESSAGE_NUM = "messageNum";

	protected void initDao() {
		// do nothing
	}

	public void save(Community transientInstance) {
		log.debug("saving Community instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Community persistentInstance) {
		log.debug("deleting Community instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Community findById(java.lang.Integer id) {
		log.debug("getting Community instance with id: " + id);
		try {
			Community instance = (Community) getHibernateTemplate().get(
					"com.yizhaobao.entity.Community", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Community instance) {
		log.debug("finding Community instance by example");
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
		log.debug("finding Community instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Community as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByCommunityName(Object communityName) {
		return findByProperty(COMMUNITY_NAME, communityName);
	}

	public List findByCommunityPhoto(Object communityPhoto) {
		return findByProperty(COMMUNITY_PHOTO, communityPhoto);
	}

	public List findByCommunityType(Object communityType) {
		return findByProperty(COMMUNITY_TYPE, communityType);
	}

	public List findByCommunityIntroduction(Object communityIntroduction) {
		return findByProperty(COMMUNITY_INTRODUCTION, communityIntroduction);
	}

	public List findByAddReason(Object addReason) {
		return findByProperty(ADD_REASON, addReason);
	}

	public List findByCommunityLabel(Object communityLabel) {
		return findByProperty(COMMUNITY_LABEL, communityLabel);
	}

	public List findByCommunityScore(Object communityScore) {
		return findByProperty(COMMUNITY_SCORE, communityScore);
	}

	public List findByCommunityRank(Object communityRank) {
		return findByProperty(COMMUNITY_RANK, communityRank);
	}

	public List findByUserNum(Object userNum) {
		return findByProperty(USER_NUM, userNum);
	}

	public List findByMessageNum(Object messageNum) {
		return findByProperty(MESSAGE_NUM, messageNum);
	}

	public List findAll() {
		log.debug("finding all Community instances");
		try {
			String queryString = "from Community";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Community merge(Community detachedInstance) {
		log.debug("merging Community instance");
		try {
			Community result = (Community) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Community instance) {
		log.debug("attaching dirty Community instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Community instance) {
		log.debug("attaching clean Community instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CommunityDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CommunityDAO) ctx.getBean("CommunityDAO");
	}
}