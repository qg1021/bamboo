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

import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.gm.bamboo.core.AdvertManager;
import com.gm.bamboo.entity.Advert;
import com.google.common.collect.Lists;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页广告位信息
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-10
 */
@Namespace("/")
public class AdvertAction extends ActionSupport
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private List<Advert>      floatLeftAdList  = Lists.newArrayList();

    private List<Advert>      floatRightAdList = Lists.newArrayList();

    private List<Advert>      centerAdList     = Lists.newArrayList();

    private List<Advert>      tabAdList        = Lists.newArrayList();

    private List<Advert>      rightAdList      = Lists.newArrayList();

    @Autowired
    private AdvertManager     advertManager;

    /**
     * 
     * 首页左右两边广告位
     * 
     * @since 2012-9-18
     * @author qingang
     * @return
     * @throws Exception
     */
    public String indexfloat() throws Exception
    {
        floatLeftAdList = advertManager.search(Advert.TYPE_0, 10);
        floatRightAdList = advertManager.search(Advert.TYPE_1, 10);
        return "float";
    }

    /**
     * 
     * 首页中间广告位
     * 
     * @since 2012-9-18
     * @author qingang
     * @return
     * @throws Exception
     */
    public String indexcenter() throws Exception
    {
        centerAdList = advertManager.search(Advert.TYPE_3, 6);
        return "center";
    }

    /**
     * 
     * 首页右边广告位
     * 
     * @since 2012-9-18
     * @author qingang
     * @return
     * @throws Exception
     */
    public String indexright() throws Exception
    {
        rightAdList = advertManager.search(Advert.TYPE_5, 8);
        return "right";
    }

    /**
     * 
     * 首页资讯中间广告位
     * 
     * @since 2012-9-18
     * @author qingang
     * @return
     * @throws Exception
     */
    public String indexnews() throws Exception
    {
        centerAdList = advertManager.search(Advert.TYPE_4, 6);
        return "center";
    }

    /**
     * 
     * 首页自动切换广告位
     * 
     * @since 2012-9-18
     * @author qingang
     * @return
     * @throws Exception
     */
    public String indextab() throws Exception
    {
        tabAdList = advertManager.search(Advert.TYPE_2, 8);
        return "tab";
    }

    public List<Advert> getFloatLeftAdList()
    {
        return floatLeftAdList;
    }

    public void setFloatLeftAdList(List<Advert> floatLeftAdList)
    {
        this.floatLeftAdList = floatLeftAdList;
    }

    public List<Advert> getFloatRightAdList()
    {
        return floatRightAdList;
    }

    public void setFloatRightAdList(List<Advert> floatRightAdList)
    {
        this.floatRightAdList = floatRightAdList;
    }

    public List<Advert> getCenterAdList()
    {
        return centerAdList;
    }

    public void setCenterAdList(List<Advert> centerAdList)
    {
        this.centerAdList = centerAdList;
    }

    public List<Advert> getTabAdList()
    {
        return tabAdList;
    }

    public void setTabAdList(List<Advert> tabAdList)
    {
        this.tabAdList = tabAdList;
    }

    public List<Advert> getRightAdList()
    {
        return rightAdList;
    }

    public void setRightAdList(List<Advert> rightAdList)
    {
        this.rightAdList = rightAdList;
    }

}
