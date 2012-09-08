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
import java.util.Set;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springside.modules.security.springsecurity.SpringSecurityUtils;
import org.springside.modules.utils.web.struts2.Struts2Utils;

import cn.common.lib.springside.web.CrudActionSupport;

import com.gm.bamboo.contant.Global;
import com.gm.bamboo.entity.Role;
import com.gm.bamboo.entity.User;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;

/**
 * 用户注册、忘记密码
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-5
 */
@Namespace("/")
@Results( { @Result(name = CrudActionSupport.RELOAD, location = "user/index.action", type = "redirect") })
public class RegisterAction extends BaseUserAction
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    @Override
    public String input() throws Exception
    {
        return SUCCESS;
    }

    @Override
    protected void prepareModel() throws Exception
    {
        if (id != null)
        {
            entity = userManager.get(id);
        }
        else
        {
            entity = new User();
            List<Role> rlist = Lists.newArrayList();
            rlist.add(roleManager.findByName(Role.ROLE_TYPE_0));
            entity.setRoleList(rlist);
            entity.setCreateDate(new Date());
        }

    }

    @Override
    public String save() throws Exception
    {
        try
        {
            userManager.save(entity);
            UserDetails userDetails = new org.springframework.security.core.userdetails.User(
                    entity.getLoginName(), entity.getPassword(), true, false,
                    false, false, obtainGrantedAuthorities(entity));
            SpringSecurityUtils.saveUserDetailsToContext(userDetails,
                    Struts2Utils.getRequest());

            Struts2Utils.getSession().setAttribute("loginUser", entity);
        }
        catch (Exception e)
        {
            this.addActionMessage(Global.SAVE_LOSE);
            e.printStackTrace();
        }
        return RELOAD;
    }

    /**
     * 获得用户所有角色的权限集合.
     */
    private Set<GrantedAuthority> obtainGrantedAuthorities(User user)
    {
        Set<GrantedAuthority> authSet = Sets.newHashSet();

        authSet.add(new GrantedAuthorityImpl(user.getRoleName()));
        return authSet;
    }

}
