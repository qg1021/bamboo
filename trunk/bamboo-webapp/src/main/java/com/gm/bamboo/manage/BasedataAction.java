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
package com.gm.bamboo.manage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PropertyFilter;
import org.springside.modules.utils.web.struts2.Struts2Utils;

import cn.common.lib.springside.util.ParamPropertyUtils;
import cn.common.lib.springside.web.CrudActionSupport;
import cn.common.lib.vo.LabelValue;

import com.gm.bamboo.contant.Global;
import com.gm.bamboo.core.BaseDataManager;
import com.gm.bamboo.entity.BaseData;

/**
 * 
 * 后台基础数据action
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-28
 */
@Namespace("/backend")
@Results( { @Result(name = CrudActionSupport.RELOAD, location = "basedata.action", type = "redirect") })
public class BasedataAction extends CrudActionSupport<BaseData>
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private Long              id;

    private BaseData          entity;

    private List<Long>        ids;

    private Page<BaseData>    page             = new Page<BaseData>(10);

    /**
     * 
     * 基础数据类型列表
     * 
     * @since 2012-7-29
     * @author qingang
     * @return
     */
    public List<LabelValue> getDataTypeList()
    {
        return Global.BASEDATA_TYPES;
    }

    @Autowired
    private BaseDataManager baseDataManager;

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
            baseDataManager.delete(id);
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
            baseDataManager.batchDelete(ids);
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
            page = baseDataManager.search(page, filters);
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
            entity = baseDataManager.get(id);
        }
        else
        {
            entity = new BaseData();
        }

    }

    @Override
    public String save() throws Exception
    {
        try
        {
            baseDataManager.save(entity);
            this.addActionMessage(Global.SAVE_SUCCESS);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.SAVE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    @Override
    public BaseData getModel()
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

    public BaseData getEntity()
    {
        return entity;
    }

    public void setEntity(BaseData entity)
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

    public Page<BaseData> getPage()
    {
        return page;
    }

    public void setPage(Page<BaseData> page)
    {
        this.page = page;
    }

}
