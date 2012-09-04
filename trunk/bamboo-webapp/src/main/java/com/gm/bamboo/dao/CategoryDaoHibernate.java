package com.gm.bamboo.dao;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springside.modules.orm.hibernate.HibernateDao;

import com.gm.bamboo.api.CategoryDao;
import com.gm.bamboo.entity.Category;

/**
 * 产品分类的数据访问类
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-09-01
 */
@Component
public class CategoryDaoHibernate extends HibernateDao<Category, Long>
        implements CategoryDao
{
    private static Logger       logger       = LoggerFactory
                                                     .getLogger(CategoryDaoHibernate.class);

    // 批量删除
    private static final String BATCH_DELETE = "delete from Category where id in (:ids)";

    /**
     * 
     * 批量删除
     * 
     * @since 2011-7-22
     * @author qingang
     * @param idsList
     * @return
     */
    public int batchDelete(List<Long> idsList)
    {
        Map<String, List<Long>> values = Collections.singletonMap("ids",
                idsList);
        return batchExecute(BATCH_DELETE, values);
    }

    /**
     * 
     * 根据父类ID查询栏目
     * 
     * @since 2012-6-26
     * @author qingang
     * @param parentId
     * @return
     */
    public List<Category> findByParentId(Long parentId)
    {
        if (parentId == null)
        {
            return this.find("from Category where pid=0 order by id desc ");
        }
        else
        {
            return this.find("from Category where pid=? order by id desc ",
                    parentId);
        }
    }
}
