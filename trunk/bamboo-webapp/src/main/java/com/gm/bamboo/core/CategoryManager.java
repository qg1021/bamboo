package com.gm.bamboo.core;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import cn.common.lib.cache.CacheManager;

import com.gm.bamboo.api.CategoryDao;
import com.gm.bamboo.cache.CacheKeyUtil;
import com.gm.bamboo.entity.Category;
import com.google.common.collect.Lists;

/**
 * 
 * 操作栏目的业务逻辑类
 * 
 * @author fangyong
 * @version 1.0
 * @param <T>
 * @since 2010-11-2
 */

// Spring Bean的标识.
@Component
// 默认将类中的所有函数纳入事务管理.
public class CategoryManager extends CacheEntityManager<Category, Long>
{
    @Autowired
    @Qualifier("ehCacheManager")
    CacheManager        cacheManager;

    /**
     * 定义实体类对象 categoryDao
     */
    private CategoryDao categoryDao;

    /**
     * 重写父类方法，以便使用缓存
     * 
     * @author houbing.qian
     * @since 1.0 2011/07/06
     */
    @Override
    public void save(Category category)
    {
        categoryDao.save(category);
        cacheManager.clear(CacheKeyUtil.CategoryPrefix);
    }

    /**
     * 重构删除,清空缓存
     * 
     * @since 2012-6-29
     * @see cn.common.lib.springside.service.EntityManager#save(java.lang.Object)
     */
    @Override
    public void delete(Long id)
    {
        categoryDao.delete(id);
        cacheManager.clear(CacheKeyUtil.CategoryPrefix);
    }

    /**
     * 取得所有分类，经过缓存处理 注意：分类有变化后要清空缓存
     * 
     * @author houbing.qian
     * @since 1.0 2011/07/06
     */
    @SuppressWarnings("unchecked")
    public List<Category> getAllCats(Long parentId)
    {
        String cacheKey = CacheKeyUtil.buildCategoryKey(parentId);
        Object object = cacheManager.get(cacheKey);
        if (object == null)
        {
            List<Category> list = categoryDao.findByParentId(parentId);
            cacheManager.put(cacheKey, super.getIDs(list));
            return list;
        }
        else
        {
            List<Long> idList = (List<Long>) object;
            return super.getObjectsbyIds(idList);
        }
    }

    /**
     * 
     * 批量删除
     * 
     * @since 2011-7-22
     * @author fangyong
     * @param zhiding
     * @param idsList
     * @return
     */
    public void batchDelete(Long[] ids)
    {
        // 将对象Id集合转化成字符串集合
        List<Long> idsList = Lists.newArrayList();
        if (ids != null && ids.length > 0)
        {
            for (Long id : ids)
            {
                idsList.add(id);
            }
            categoryDao.batchDelete(idsList);
            cacheManager.clear(CacheKeyUtil.CategoryPrefix);
        }
    }

    /**
     * 
     * 根据父类ID和名称判断是否存在重名的栏目,true表示已存在
     * 
     * @since 2012-6-26
     * @author fangyong
     * @param parentId
     * @param name
     * @return
     */
    public boolean findNameUnique(Long parentId, String name)
    {
        List<Category> twoCatLists = getAllCats(parentId);
        if (twoCatLists != null && twoCatLists.size() > 0)
        {
            for (Category cat : twoCatLists)
            {
                if (cat.getName().equals(name))
                {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * 实体类对象categoryDao的setter方法 　　
     */
    @Autowired
    public void setCategoryDao(CategoryDao categoryDao)
    {
        this.categoryDao = categoryDao;
    }

    @Override
    protected CategoryDao getEntityDao()
    {
        return categoryDao;
    }

}
