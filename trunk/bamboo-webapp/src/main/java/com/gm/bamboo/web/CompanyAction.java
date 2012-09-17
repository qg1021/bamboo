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

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PropertyFilter;
import org.springside.modules.security.springsecurity.SpringSecurityUtils;
import org.springside.modules.utils.web.struts2.Struts2Utils;

import cn.common.lib.springside.util.ParamPropertyUtils;
import cn.common.lib.springside.web.CrudActionSupport;

import com.gm.bamboo.contant.Global;
import com.gm.bamboo.core.CompanyManager;
import com.gm.bamboo.core.UserManager;
import com.gm.bamboo.entity.Company;

/**
 * 
 * 前台企业action
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-28
 */
@Namespace("/user")
@Results( { @Result(name = CrudActionSupport.RELOAD, location = "company.action", type = "redirect") })
public class CompanyAction extends CrudActionSupport<Company>
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private Long              id;

    private Company           entity;

    private List<Long>        ids;

    private Page<Company>     page             = new Page<Company>(10);

    @Autowired
    private CompanyManager    companyManager;

    @Autowired
    private UserManager       userManager;

    private boolean           isedit;

    public boolean isIsedit()
    {
        return isedit;
    }

    public void setIsedit(boolean isedit)
    {
        this.isedit = isedit;
    }

    @Override
    public String input() throws Exception
    {
        return INPUT;
    }

    @Override
    public String delete() throws Exception
    {
        try
        {
            companyManager.delete(id);
            this.addActionMessage(Global.DELETE_SUCCESS);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            this.addActionMessage(Global.DELETE_LOSE);
        }
        return RELOAD;
    }

    /**
     * 
     * 批量删除
     * 
     * @since 2012-7-29
     * @author qingang
     * @return
     * @throws Exception
     */
    public String batchDelete() throws Exception
    {

        try
        {
            companyManager.batchDelete(ids);
            this.addActionMessage(Global.DELETE_SUCCESS);
        }
        catch (Exception e)
        {
            e.printStackTrace();
            this.addActionMessage(Global.DELETE_LOSE);
        }
        return RELOAD;
    }

    @Override
    public String list() throws Exception
    {
        try
        {
            HttpServletRequest request = Struts2Utils.getRequest();
            List<PropertyFilter> filters = PropertyFilter
                    .buildFromHttpRequest(request);
            ParamPropertyUtils.replacePropertyRule(filters);
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

        return SUCCESS;
    }

    @Override
    protected void prepareModel() throws Exception
    {
        if (id != null)
        {
            entity = companyManager.get(id);
        }
        else
        {
            entity = new Company();
            entity.setUser(userManager.getUserByUsername(SpringSecurityUtils
                    .getCurrentUserName()));
        }

    }

    @Override
    public String save() throws Exception
    {
        try
        {
            companyManager.save(entity);
            this.addActionMessage(Global.SAVE_SUCCESS);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.SAVE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    public String publish() throws Exception
    {
        try
        {
            companyManager.publish(ids);
            this.addActionMessage(Global.PUBLISH_SUCCESS);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.PUBLISH_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    public String cancelPublish() throws Exception
    {
        try
        {
            companyManager.cancelPublish(ids);
            this.addActionMessage(Global.CANCEL_SUCCESS);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.CANCEL_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    @Override
    public Company getModel()
    {
        return entity;
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Company getEntity()
    {
        return entity;
    }

    public void setEntity(Company entity)
    {
        this.entity = entity;
    }

    public List<Long> getIds()
    {
        return ids;
    }

    public void setIds(List<Long> ids)
    {
        this.ids = ids;
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
