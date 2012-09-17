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

import com.gm.bamboo.core.CategoryManager;
import com.gm.bamboo.entity.Category;
import com.gm.bamboo.vo.CategoryVO;
import com.google.common.collect.Lists;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 首页分类action
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-28
 */
@Namespace("/")
public class CategoryAction extends ActionSupport
{

    /**
     * serialVersionUID long
     */
    private static final long      serialVersionUID = 1L;

    @Autowired
    private CategoryManager        categoryManager;

    private final List<CategoryVO> catList          = Lists.newArrayList();

    public List<CategoryVO> getCatList()
    {
        return catList;
    }

    @Override
    public String execute() throws Exception
    {
        List<Category> oneCatList = categoryManager.getAllCats(null);
        CategoryVO cv = null;
        for (Category c : oneCatList)
        {
            cv = new CategoryVO();
            cv.setCategory(c);
            cv.setCategoryList(categoryManager.getAllCats(c.getId()));
            catList.add(cv);
        }
        return SUCCESS;
    }

}
