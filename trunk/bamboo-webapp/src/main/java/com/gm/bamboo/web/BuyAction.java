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

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.xwork.StringUtils;
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
import com.gm.bamboo.core.BuyManager;
import com.gm.bamboo.core.CategoryManager;
import com.gm.bamboo.core.UserManager;
import com.gm.bamboo.entity.Buy;
import com.gm.bamboo.entity.Category;
import com.google.common.collect.Lists;

/**
 * 会员中心求购信息管理
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-10
 */
@Namespace("/user")
@Results( { @Result(name = CrudActionSupport.RELOAD, location = "buy.action", type = "redirect") })
public class BuyAction extends CrudActionSupport<Buy>
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private Long              id;

    private List<Long>        ids;

    private Buy               buy;

    private Page<Buy>         page             = new Page<Buy>(10);

    @Autowired
    private BuyManager        buyManager;

    @Autowired
    private CategoryManager   categoryManager;

    @Autowired
    private UserManager       userManager;

    private String            oneCatid;

    private String            twoCatid;

    private List<Category>    twoCatList       = Lists.newArrayList();

    private boolean           isedit;

    public boolean isIsedit()
    {
        return isedit;
    }

    public void setIsedit(boolean isedit)
    {
        this.isedit = isedit;
    }

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
        if (StringUtils.isNotBlank(oneCatid))
        {
            filters.add(new PropertyFilter("EQL_onecat", oneCatid));
            twoCatList = categoryManager.getAllCats(Long.parseLong(oneCatid));
        }
        if (StringUtils.isNotEmpty(twoCatid))
        {
            filters.add(new PropertyFilter("EQL_twocat", twoCatid));
        }
        filters.add(new PropertyFilter("EQL_uid", String.valueOf(userManager
                .getUserByUsername(SpringSecurityUtils.getCurrentUserName())
                .getId())));
        if (!page.isOrderBySetted())
        {
            page.setOrderBy("id");
            page.setOrder(Page.DESC);
        }
        page = buyManager.search(page, filters);
        return SUCCESS;
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
            buy = buyManager.get(id);
            twoCatList = categoryManager.getAllCats(buy.getOnecat());
        }
        else
        {
            buy = new Buy();
            buy.setIspublish(false);
            buy.setCreatedate(new Date());
            buy.setUser(userManager.getUserByUsername(SpringSecurityUtils
                    .getCurrentUserName()));
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

        try
        {
            buy.setOnecat(Long.parseLong(oneCatid));
            if (StringUtils.isNotBlank(twoCatid))
            {
                buy.setTwocat(Long.parseLong(twoCatid));
                buy.setCategory(categoryManager.get(Long.parseLong(twoCatid)));
            }
            else
            {
                buy.setCategory(categoryManager.get(Long.parseLong(oneCatid)));
            }
            if (StringUtils.isBlank(buy.getPicurl()))
            {
                buy.setPicurl(Global.DEAULT_NO_IMAGE);
            }
            buyManager.save(buy);
            super.addActionMessage(Global.SAVE_SUCCESS);
        }
        catch (Exception e)
        {
            super.addActionMessage(Global.SAVE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    /**
     * 
     * 批量删除
     * 
     * @since 2012-9-10
     * @author qingang
     * @return
     * @throws Exception
     */
    public String batchDelete() throws Exception
    {
        try
        {
            buyManager.batchDelete(ids);
            super.addActionMessage(Global.DELETE_SUCCESS);
        }
        catch (Exception e)
        {
            super.addActionMessage(Global.DELETE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    @Override
    public String delete() throws Exception
    {
        try
        {
            buyManager.delete(id);
            super.addActionMessage(Global.DELETE_SUCCESS);
        }
        catch (Exception e)
        {
            super.addActionMessage(Global.DELETE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    public String publish() throws Exception
    {
        try
        {
            buyManager.publish(ids);
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
            buyManager.cancelPublish(ids);
            this.addActionMessage(Global.CANCEL_SUCCESS);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.CANCEL_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    /**
     * {@inheritDoc}
     * 
     * @since 2012-9-10
     * @see com.opensymphony.xwork2.ModelDriven#getModel()
     */
    @Override
    public Buy getModel()
    {
        return buy;
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

    public Buy getBuy()
    {
        return buy;
    }

    public void setBuy(Buy buy)
    {
        this.buy = buy;
    }

    public Page<Buy> getPage()
    {
        return page;
    }

    public void setPage(Page<Buy> page)
    {
        this.page = page;
    }

    public String getOneCatid()
    {
        return oneCatid;
    }

    public void setOneCatid(String oneCatid)
    {
        this.oneCatid = oneCatid;
    }

    public List<Category> getOneCatList()
    {
        return categoryManager.getAllCats(null);
    }

    public String getTwoCatid()
    {
        return twoCatid;
    }

    public void setTwoCatid(String twoCatid)
    {
        this.twoCatid = twoCatid;
    }

    public List<Category> getTwoCatList()
    {
        return twoCatList;
    }

}
