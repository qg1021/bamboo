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
package com.gm.bamboo.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PropertyFilter;
import org.springside.modules.utils.web.struts2.Struts2Utils;

import cn.common.lib.springside.util.ParamPropertyUtils;
import cn.common.lib.springside.web.CrudActionSupport;

import com.gm.bamboo.core.CompanyManager;
import com.gm.bamboo.entity.Company;

/**
 * 首页企业信息
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-10
 */
@Namespace("/")
public class IndexcompanyAction extends CrudActionSupport<Company>
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private Long              id;

    private List<Long>        ids;

    private Company           company;

    private Page<Company>     page             = new Page<Company>(20);

    @Autowired
    private CompanyManager    companyManager;

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see cn.common.lib.springside.web.CrudActionSupport#input()
     */
    @Override
    public String input() throws Exception
    {
        return INPUT;
    }

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see cn.common.lib.springside.web.CrudActionSupport#list()
     */
    @Override
    public String list() throws Exception
    {
        HttpServletRequest request = Struts2Utils.getRequest();
        List<PropertyFilter> filters = PropertyFilter
                .buildFromHttpRequest(request);
        ParamPropertyUtils.replacePropertyRule(filters);
        String keyword = request.getParameter("keyword");

        if (StringUtils.isNotBlank(keyword))
        {
            filters.add(new PropertyFilter("LIKES_title", keyword));
        }

        filters.add(new PropertyFilter("EQB_ispublish", "true"));
        if (!page.isOrderBySetted())
        {
            page.setOrderBy("id");
            page.setOrder(Page.DESC);
        }
        page = companyManager.search(page, filters);
        return SUCCESS;
    }

    public String search() throws Exception
    {
        try
        {
            HttpServletRequest request = Struts2Utils.getRequest();
            List<PropertyFilter> filters = PropertyFilter
                    .buildFromHttpRequest(request);
            ParamPropertyUtils.replacePropertyRule(filters);
            String keyword = request.getParameter("keyword");
            if (StringUtils.isNotBlank(keyword))
            {
                filters.add(new PropertyFilter("LIKES_title", keyword));
            }
            filters.add(new PropertyFilter("EQB_ispublic", "true"));
            if (!page.isOrderBySetted())
            {
                page.setOrderBy("id");
                page.setOrder(Page.DESC);
            }
            page = companyManager.search(page, filters);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return "search";
    }

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see cn.common.lib.springside.web.CrudActionSupport#prepareModel()
     */
    @Override
    protected void prepareModel() throws Exception
    {
        if (id != null)
        {
            company = companyManager.get(id);
        }

    }

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see cn.common.lib.springside.web.CrudActionSupport#save()
     */
    @Override
    public String save() throws Exception
    {

        return null;
    }

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see com.opensymphony.xwork2.ModelDriven#getModel()
     */
    @Override
    public Company getModel()
    {
        return company;
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public List<Long> getIds()
    {
        return ids;
    }

    public void setIds(List<Long> ids)
    {
        this.ids = ids;
    }

    public Company getCompany()
    {
        return company;
    }

    public void setCompany(Company company)
    {
        this.company = company;
    }

    public Page<Company> getPage()
    {
        return page;
    }

    public void setPage(Page<Company> page)
    {
        this.page = page;
    }

}
