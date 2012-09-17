package com.gm.bamboo.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

/**
 * 
 * 招商信息
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-24
 */
@Entity
@Table(name = "t_business")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Business extends BaseEntity
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private String            title;

    private String            picurl;

    private String            remark;

    private boolean           ispublic;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    @JoinColumn(name = "user_id")
    private User              user;                 // 用户

    private long              uid;                  // 用户id

    public long getUid()
    {
        return uid;
    }

    public void setUid(long uid)
    {
        this.uid = uid;
    }

    public User getUser()
    {
        return user;
    }

    public void setUser(User user)
    {
        this.user = user;
        this.uid = user.getId();
    }

    @Transient
    public String getStatusName()
    {
        if (ispublic)
        {
            return "已发布";
        }
        return "未发布";
    }

    public boolean isIspublic()
    {
        return ispublic;
    }

    public void setIspublic(boolean ispublic)
    {
        this.ispublic = ispublic;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public String getPicurl()
    {
        return picurl;
    }

    public void setPicurl(String picurl)
    {
        this.picurl = picurl;
    }

    public String getRemark()
    {
        return remark;
    }

    public void setRemark(String remark)
    {
        this.remark = remark;
    }

    public String getLinkurl()
    {
        return linkurl;
    }

    public void setLinkurl(String linkurl)
    {
        this.linkurl = linkurl;
    }

    private String linkurl;

}