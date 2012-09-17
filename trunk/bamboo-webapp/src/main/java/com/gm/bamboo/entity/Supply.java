package com.gm.bamboo.entity;

import java.util.Date;

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
 * 供应信息
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-7-24
 */
@Entity
@Table(name = "t_supply")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Supply extends BaseEntity
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = 1L;

    private String            title;                // 标题

    private String            name;                 // 产品名称

    private Date              createdate;           // 创建时间

    private Boolean           ispublish;            // 是否发布

    private Date              publishdate;          // 发布时间

    private Date              indate;               // 有效期

    private String            picurl;               // 产品配图

    private String            province;             // 所在省

    private String            city;                 // 所在城市

    private String            area;                 // 所在地区

    private String            address;              // 详细地址

    private String            bmodel;               // 经营模式 0：生产型 1：加工型 2： 代理型

    private String            price;                // 价格

    private String            company;              // 企业名称

    private String            linkman;              // 联系人

    private String            linktel;              // 电话

    private String            fax;                  // 传真

    private String            mobile;               // 手机

    private String            postcode;             // 邮编

    private String            website;              // 公司网站

    private String            email;                // 邮箱

    private String            desciption;           // 产品详细

    private long              onecat;               // 一级分类id

    private long              twocat;               // 二级分类id

    private long              uid;                  // 用户id

    public long getUid()
    {
        return uid;
    }

    public void setUid(long uid)
    {
        this.uid = uid;
    }

    public long getOnecat()
    {
        return onecat;
    }

    public void setOnecat(long onecat)
    {
        this.onecat = onecat;
    }

    public long getTwocat()
    {
        return twocat;
    }

    public void setTwocat(long twocat)
    {
        this.twocat = twocat;
    }

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    @JoinColumn(name = "cat_id")
    private Category category; // 分类

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    @JoinColumn(name = "user_id")
    private User     user;    // 用户

    @Transient
    public String getCategoryName()
    {
        if (category != null && category.getParent() != null)
        {
            return category.getParent().getName() + ">>" + category.getName();
        }
        else
        {
            return category.getName();
        }
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

    public Category getCategory()
    {
        return category;
    }

    public void setCategory(Category category)
    {
        this.category = category;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getDesciption()
    {
        return desciption;
    }

    public void setDesciption(String desciption)
    {
        this.desciption = desciption;
    }

    @Transient
    public String getStatusName()
    {
        if (ispublish)
        {
            return "已发布";
        }
        return "未发布";
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Date getIndate()
    {
        return indate;
    }

    public void setIndate(Date indate)
    {
        this.indate = indate;
    }

    public String getPicurl()
    {
        return picurl;
    }

    public void setPicurl(String picurl)
    {
        this.picurl = picurl;
    }

    public String getProvince()
    {
        return province;
    }

    public void setProvince(String province)
    {
        this.province = province;
    }

    public String getCity()
    {
        return city;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public String getArea()
    {
        return area;
    }

    public void setArea(String area)
    {
        this.area = area;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getBmodel()
    {
        return bmodel;
    }

    public void setBmodel(String bmodel)
    {
        this.bmodel = bmodel;
    }

    public String getPrice()
    {
        return price;
    }

    public void setPrice(String price)
    {
        this.price = price;
    }

    public String getCompany()
    {
        return company;
    }

    public void setCompany(String company)
    {
        this.company = company;
    }

    public String getLinkman()
    {
        return linkman;
    }

    public void setLinkman(String linkman)
    {
        this.linkman = linkman;
    }

    public String getLinktel()
    {
        return linktel;
    }

    public void setLinktel(String linktel)
    {
        this.linktel = linktel;
    }

    public String getFax()
    {
        return fax;
    }

    public void setFax(String fax)
    {
        this.fax = fax;
    }

    public String getMobile()
    {
        return mobile;
    }

    public void setMobile(String mobile)
    {
        this.mobile = mobile;
    }

    public String getPostcode()
    {
        return postcode;
    }

    public void setPostcode(String postcode)
    {
        this.postcode = postcode;
    }

    public String getWebsite()
    {
        return website;
    }

    public void setWebsite(String website)
    {
        this.website = website;
    }

    public String getTitle()
    {
        return title;
    }

    public void setTitle(String title)
    {
        this.title = title;
    }

    public Date getCreatedate()
    {
        return createdate;
    }

    public void setCreatedate(Date createdate)
    {
        this.createdate = createdate;
    }

    public Boolean getIspublish()
    {
        return ispublish;
    }

    public void setIspublish(Boolean ispublish)
    {
        this.ispublish = ispublish;
    }

    public Date getPublishdate()
    {
        return publishdate;
    }

    public void setPublishdate(Date publishdate)
    {
        this.publishdate = publishdate;
    }

}