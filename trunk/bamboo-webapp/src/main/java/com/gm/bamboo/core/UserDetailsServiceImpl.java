package com.gm.bamboo.core;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.gm.bamboo.entity.Role;
import com.gm.bamboo.entity.User;
import com.google.common.collect.Sets;

public class UserDetailsServiceImpl implements UserDetailsService
{
    @Autowired
    private AccountManager accountManager;

    @Override
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException
    {
        // TODO Auto-generated method stub
        User user = accountManager.findUserByLoginName(username);
        if (user == null)
        {
            throw new UsernameNotFoundException("用户" + username + " 不存在");

        }

        // 示例中无以下属性, 暂时全部设为true. --//
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        Set<GrantedAuthority> grantedAuths = obtainGrantedAuthorities(user);

        UserDetails userdetails = new org.springframework.security.core.userdetails.User(
                user.getLoginName(), user.getPassword(), enabled,
                accountNonExpired, credentialsNonExpired, accountNonLocked,
                grantedAuths);

        return userdetails;
    }

    /**
     * 获得用户所有角色的权限集合.
     */
    private Set<GrantedAuthority> obtainGrantedAuthorities(User user)
    {
        Set<GrantedAuthority> authSet = Sets.newHashSet();
        for (Role role : user.getRoleList())
        {
            authSet.add(new GrantedAuthorityImpl(role.getName()));
        }
        return authSet;
    }

}
