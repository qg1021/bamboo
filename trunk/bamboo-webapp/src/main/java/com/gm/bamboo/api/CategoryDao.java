package com.gm.bamboo.api;

import java.util.List;

import cn.common.lib.springside.orm.BaseDao;

import com.gm.bamboo.entity.Category;

/**
 * 
 * 产品分类接口
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-2
 */
public interface CategoryDao extends BaseDao<Category, Long>
{
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
    public int batchDelete(List<Long> idsList);

    /**
     * 
     * 根据父类ID查询栏目
     * 
     * @since 2012-6-26
     * @author fangyong
     * @param parentId
     * @return
     */
    public List<Category> findByParentId(Long parentId);
}
