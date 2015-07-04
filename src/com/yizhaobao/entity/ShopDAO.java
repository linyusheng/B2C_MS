package com.yizhaobao.entity;

import java.util.List;
import java.util.Set;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Shop
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.yizhaobao.entity.Shop
 * @author MyEclipse Persistence Tools
 */

public class ShopDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(ShopDAO.class);
	// property constants
	public static final String SHOP_NAME = "shopName";
	public static final String SHOP_ADDRESS = "shopAddress";
	public static final String SHOP_PHOTO = "shopPhoto";
	public static final String SHOP_MAP = "shopMap";
	public static final String SHOP_INTRODUTION = "shopIntrodution";
	public static final String SHOP_RANKING = "shopRanking";
	public static final String SHOP_LABEL = "shopLabel";
	public static final String SHOP_PHONE = "shopPhone";
	public static final String COMEMT_COUNT = "comemtCount";
	public static final String ACCESS_COUNT = "accessCount";
	public static final String GOODS_COUNT = "goodsCount";
	public static final String HONOR_RANK = "honorRank";
	public static final String SHOP_FEATURE = "shopFeature";
	public static final String REMARK = "remark";
	public static final String TOTAL_COMMENT = "totalComment";
	public static final String QUALITY_COMMENT = "qualityComment";
	public static final String ENVIRONMENT_COMMENT = "environmentComment";
	public static final String SERVICE_COMMENT = "serviceComment";

	protected void initDao() {
		// do nothing
	}

	public void save(Shop transientInstance) {
		log.debug("saving Shop instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Shop persistentInstance) {
		log.debug("deleting Shop instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Shop findById(java.lang.Integer id) {
		log.debug("getting Shop instance with id: " + id);
		try {
			Shop instance = (Shop) getHibernateTemplate().get(
					"com.yizhaobao.entity.Shop", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Shop instance) {
		log.debug("finding Shop instance by example");
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
		log.debug("finding Shop instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Shop as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByShopName(Object shopName) {
		return findByProperty(SHOP_NAME, shopName);
	}

	public List findByShopAddress(Object shopAddress) {
		return findByProperty(SHOP_ADDRESS, shopAddress);
	}

	public List findByShopPhoto(Object shopPhoto) {
		return findByProperty(SHOP_PHOTO, shopPhoto);
	}

	public List findByShopMap(Object shopMap) {
		return findByProperty(SHOP_MAP, shopMap);
	}

	public List findByShopIntrodution(Object shopIntrodution) {
		return findByProperty(SHOP_INTRODUTION, shopIntrodution);
	}

	public List findByShopRanking(Object shopRanking) {
		return findByProperty(SHOP_RANKING, shopRanking);
	}

	public List findByShopLabel(Object shopLabel) {
		return findByProperty(SHOP_LABEL, shopLabel);
	}

	public List findByShopPhone(Object shopPhone) {
		return findByProperty(SHOP_PHONE, shopPhone);
	}

	public List findByComemtCount(Object comemtCount) {
		return findByProperty(COMEMT_COUNT, comemtCount);
	}

	public List findByAccessCount(Object accessCount) {
		return findByProperty(ACCESS_COUNT, accessCount);
	}

	public List findByGoodsCount(Object goodsCount) {
		return findByProperty(GOODS_COUNT, goodsCount);
	}

	public List findByHonorRank(Object honorRank) {
		return findByProperty(HONOR_RANK, honorRank);
	}

	public List findByShopFeature(Object shopFeature) {
		return findByProperty(SHOP_FEATURE, shopFeature);
	}

	public List findByRemark(Object remark) {
		return findByProperty(REMARK, remark);
	}

	public List findByTotalComment(Object totalComment) {
		return findByProperty(TOTAL_COMMENT, totalComment);
	}

	public List findByQualityComment(Object qualityComment) {
		return findByProperty(QUALITY_COMMENT, qualityComment);
	}

	public List findByEnvironmentComment(Object environmentComment) {
		return findByProperty(ENVIRONMENT_COMMENT, environmentComment);
	}

	public List findByServiceComment(Object serviceComment) {
		return findByProperty(SERVICE_COMMENT, serviceComment);
	}

	public List findAll() {
		log.debug("finding all Shop instances");
		try {
			String queryString = "from Shop";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Shop merge(Shop detachedInstance) {
		log.debug("merging Shop instance");
		try {
			Shop result = (Shop) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Shop instance) {
		log.debug("attaching dirty Shop instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Shop instance) {
		log.debug("attaching clean Shop instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ShopDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ShopDAO) ctx.getBean("ShopDAO");
	}
}