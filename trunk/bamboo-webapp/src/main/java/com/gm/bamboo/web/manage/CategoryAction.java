package com.gm.bamboo.web.manage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PropertyFilter;
import org.springside.modules.utils.web.struts2.Struts2Utils;

import cn.common.lib.springside.web.CrudActionSupport;
import cn.common.lib.util.web.ParamUtils;
import cn.common.lib.vo.LabelValue;

import com.gm.bamboo.core.CategoryManager;
import com.gm.bamboo.entity.Category;

/**
 * 
 * 产品分类后台action
 * 
 * @author qingang
 * @version 1.0
 * @since 2012-9-2
 */
@Namespace("/backend")
// 定义名为reload的result重定向到user.action, 其他result则按照convention默认.
@Results( { @Result(name = CrudActionSupport.RELOAD, location = "category.action?parentId=${parentId}&position=true", type = "redirect") })
public class CategoryAction extends CrudActionSupport<Category>
{
    private static final long serialVersionUID = -2807114789307673883L;

    // -- 页面属性 --//
    private Long              id;

    private Long[]            ids;

    private Long              parentId;

    public Category           category;

    private Page<Category>    page             = new Page<Category>(10);

    @Autowired
    private CategoryManager   categoryManager;

    /**
     * 进入保存页面
     * 
     * @since 2012-6-26
     * @see cn.common.lib.springside.web.CrudActionSupport#input()
     */
    @Override
    public String input() throws Exception
    {
        if (id == null && parentId != null)
        {
            category = categoryManager.get(parentId);
        }
        return INPUT;
    }

    /**
     * 查询
     * 
     * @since 2012-6-26
     * @see cn.common.lib.springside.web.CrudActionSupport#list()
     */
    @Override
    public String list() throws Exception
    {
        // 设置默认排序方式
        if (!page.isOrderBySetted())
        {
            page.setOrderBy("id");
            page.setOrder(Page.DESC);
        }

        HttpServletRequest request = Struts2Utils.getRequest();
        List<PropertyFilter> filters = PropertyFilter
                .buildFromHttpRequest(request);// 定义过滤器

        PropertyFilter parentFilter = null;
        if (parentId == null)
        {
            // 一级栏目查询
            parentFilter = new PropertyFilter("EQL_pid", "0");
        }
        else
        {
            category = categoryManager.get(parentId);
            // 二级栏目查询
            parentFilter = new PropertyFilter("EQL_pid", String
                    .valueOf(parentId));
        }
        filters.add(parentFilter);

        page = categoryManager.search(page, filters);

        return SUCCESS;
    }

    /**
     * 保存栏目
     * 
     * @since 2012-6-26
     * @see cn.common.lib.springside.web.CrudActionSupport#save()
     */
    @Override
    public String save() throws Exception
    {
        if (id == null && parentId != null)
        {
            category.setParent(categoryManager.get(parentId));
        }
        categoryManager.save(category);
        addActionMessage("栏目信息保存成功.");

        return RELOAD;
    }

    /**
     * 删除栏目
     * 
     * @since 2012-6-26
     * @see cn.common.lib.springside.web.CrudActionSupport#delete()
     */
    @Override
    public String delete() throws Exception
    {
        if (id != null)// 单个删除
        {
            categoryManager.delete(id);
            addActionMessage("栏目信息删除成功.");
        }
        else
            // 批量删除
            if (id == null && ids != null)
            {
                categoryManager.batchDelete(ids);
                addActionMessage("栏目信息删除成功.");
            }
        return RELOAD;
    }

    /**
     * 
     * 判断父类下是否存在同名的栏目名称
     * 
     * @since 2012-6-26
     * @author fangyong
     * @return
     */
    public String ajaxCheckName()
    {
        // 获得类型
        HttpServletRequest request = Struts2Utils.getRequest();
        parentId = ParamUtils.getLongParameter(request, "parentId", null);
        String name = ParamUtils.getParameter(request, "name", null);

        if (parentId == null || StringUtils.isBlank(name))
        {
            Struts2Utils.renderJson(new LabelValue("isnull", ""));
            return null;
        }
        if (categoryManager.findNameUnique(parentId, name))
        {
            Struts2Utils.renderJson(new LabelValue("exists", ""));
            return null;
        }

        return null;
    }

    @Override
    protected void prepareModel() throws Exception
    {
        if (id != null)
        {
            category = categoryManager.get(id);
        }
        else
        {
            category = new Category();
        }
    }

    public Category getModel()
    {
        return category;
    }

    public Long getId()
    {
        return id;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public void setIds(Long[] ids)
    {
        this.ids = ids;
    }

    public Long getParentId()
    {
        return parentId;
    }

    public void setParentId(Long parentId)
    {
        this.parentId = parentId;
    }

    public Category getCategory()
    {
        return category;
    }

    public void setCategory(Category category)
    {
        this.category = category;
    }

    public Page<Category> getPage()
    {
        return page;
    }

}
