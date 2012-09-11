package com.gm.bamboo.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

/**
 * 
 * 分类
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-8-29
 */
@Entity
@Table(name = "t_category")
// 默认的缓存策略
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Category extends BaseEntity
{

    /**
     * serialVersionUID long
     */
    private static final long serialVersionUID = -6686865393271702213L;

    private String            name;                                    // 栏目名称

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @NotFound(action = NotFoundAction.IGNORE)
    @JoinColumn(name = "parent_id")
    private Category          parent;                                  // 上级栏目

    private long              pid;                                     // 上级目录id

    // 没有上级目录时为
    // 默认为零

    public long getPid()
    {
        return pid;
    }

    public void setPid(long pid)
    {
        this.pid = pid;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public Category getParent()
    {
        return parent;
    }

    public void setParent(Category parent)
    {
        this.parent = parent;
        if (parent != null && parent.getId() != null)
        {
            pid = parent.getId();
        }
    }

}
