//-------------------------------------------------------------------------
// Copyright (c) 2000-2010 Digital. All Rights Reserved.
//
// This software is the confidential and proprietary information of
// Digital
//
// Original author: qingang
//
//-------------------------------------------------------------------------
// LOOSOFT MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF
// THE SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
// TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE, OR NON-INFRINGEMENT. UFINITY SHALL NOT BE
// LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING,
// MODIFYING OR DISTRIBUTING THIS SOFTWARE OR ITS DERIVATIVES.
//
// THIS SOFTWARE IS NOT DESIGNED OR INTENDED FOR USE OR RESALE AS ON-LINE
// CONTROL EQUIPMENT IN HAZARDOUS ENVIRONMENTS REQUIRING FAIL-SAFE
// PERFORMANCE, SUCH AS IN THE OPERATION OF NUCLEAR FACILITIES, AIRCRAFT
// NAVIGATION OR COMMUNICATION SYSTEMS, AIR TRAFFIC CONTROL, DIRECT LIFE
// SUPPORT MACHINES, OR WEAPONS SYSTEMS, IN WHICH THE FAILURE OF THE
// SOFTWARE COULD LEAD DIRECTLY TO DEATH, PERSONAL INJURY, OR SEVERE
// PHYSICAL OR ENVIRONMENTAL DAMAGE ("HIGH RISK ACTIVITIES"). UFINITY
// SPECIFICALLY DISCLAIMS ANY EXPRESS OR IMPLIED WARRANTY OF FITNESS FOR
// HIGH RISK ACTIVITIES.
//-------------------------------------------------------------------------
package com.gm.bamboo.core;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PropertyFilter;

import cn.common.lib.cache.CacheManager;
import cn.common.lib.springside.orm.BaseDao;

import com.gm.bamboo.api.CompanyDao;
import com.gm.bamboo.cache.CacheKeyUtil;
import com.gm.bamboo.entity.Company;
import com.google.common.collect.Lists;

/**
 * 企业信息业务逻辑类
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-25
 */
@Component
@Transactional
public class CompanyManager extends CacheEntityManager<Company, Long>
{
    @Autowired
    private CompanyDao   companyDao;

    @Autowired
    @Qualifier("ehCacheManager")
    private CacheManager cacheManager;

    /**
     * {@inheritDoc}
     * 
     * @since 2012-7-25
     * @see cn.common.lib.springside.service.EntityManager#getEntityDao()
     */
    @Override
    protected BaseDao<Company, Long> getEntityDao()
    {
        return companyDao;
    }

    @Override
    public void save(Company entity)
    {

        companyDao.save(entity);
        cacheManager.clear(CacheKeyUtil.CompanyPrefix);
    }

    /**
     * 
     * 批量删除
     * 
     * @since 2012-7-26
     * @author qingang
     * @param ids
     */
    public void batchDelete(List<Long> ids)
    {
        companyDao.batchDelete(ids);
        cacheManager.clear(CacheKeyUtil.CompanyPrefix);
    }

    @Override
    public void delete(Long id)
    {
        super.delete(id);
        cacheManager.clear(CacheKeyUtil.CompanyPrefix);
    }

    /**
     * 
     * 企业信息发布
     * 
     * @since 2012-7-26
     * @author qingang
     * @param ids
     */
    public void publish(List<Long> ids)
    {
        companyDao.operate(ids, true);
        cacheManager.clear(CacheKeyUtil.CompanyPrefix);

    }

    /**
     * 
     * 取消发布
     * 
     * @since 2012-7-26
     * @author qingang
     * @param ids
     */
    public void cancelPublish(List<Long> ids)
    {
        companyDao.operate(ids, false);
        cacheManager.clear(CacheKeyUtil.CompanyPrefix);
    }

    /**
     * 
     * 取一定企业信息
     * 
     * @since 2012-7-26
     * @author qingang
     * @param pagesize
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Company> search(int pagesize)
    {

        String cacheKey = CacheKeyUtil.buildCompanyKey(pagesize);
        Object object = cacheManager.get(cacheKey);
        if (object == null)
        {// get from db
            Page<Company> page = new Page<Company>(pagesize);
            if (!page.isOrderBySetted())
            {
                page.setOrderBy("id");
                page.setOrder(Page.DESC);
            }
            List<PropertyFilter> filters = Lists.newArrayList();
            filters.add(new PropertyFilter("EQB_ispublic", "true"));
            List<Company> list = companyDao.findPage(page, filters).getResult();
            // 从对象列表中取得key列表
            cacheManager.put(cacheKey, getIDs(list));
            return list;
        }
        else
        {
            List<Long> idList = (List<Long>) object;
            return super.getObjectsbyIds(idList);
        }
    }

}
