package com.gm.bamboo.account;

import java.io.IOException;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.util.StringUtils;
import org.springside.modules.security.springsecurity.SpringSecurityUtils;

public class UserSuccessHandler extends SimpleUrlAuthenticationSuccessHandler
{
    protected final Log  logger       = LogFactory.getLog(this.getClass());

    private Properties   customTargetUrl;

    private RequestCache requestCache = new HttpSessionRequestCache();

    public Properties getCustomTargetUrl()
    {
        return customTargetUrl;
    }

    public void setCustomTargetUrl(Properties customTargetUrl)
    {
        this.customTargetUrl = customTargetUrl;
    }

    public void setRequestCache(RequestCache requestCache)
    {
        this.requestCache = requestCache;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
            HttpServletResponse response, Authentication authentication)
            throws ServletException, IOException
    {

        UserDetails userDetails = (UserDetails) authentication.getPrincipal();

        if (!userDetails.getAuthorities().isEmpty()
                && !customTargetUrl.isEmpty())
        {
            Iterator iterator = customTargetUrl.keySet().iterator();
            while (iterator.hasNext())
            {
                String key = (String) iterator.next();
                if (SpringSecurityUtils.hasAnyRole(key))
                {
                    getRedirectStrategy().sendRedirect(request, response,
                            customTargetUrl.getProperty(key));
                    return;
                }
            }
        }
        if (StringUtils.hasText(request.getParameter(getTargetUrlParameter())))
        {
            requestCache.removeRequest(request, response);
            super.onAuthenticationSuccess(request, response, authentication);

            return;
        }

    }

}
