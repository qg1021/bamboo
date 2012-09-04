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
package com.gm.bamboo.contant;

import java.util.List;

import cn.common.lib.util.web.PropertyUtils;
import cn.common.lib.vo.LabelValue;

import com.google.common.collect.Lists;

/**
 * 
 * 全局静态变量
 * 
 * @author qingang
 * @version 1.0
 * @since 2011-11-15
 */
public class Global
{
    public final static int        MAX_PAGESIZE    = 2000;                // 最大数据量

    public final static String     EXPORT_SUCCESS  = "导出成功";

    public final static String     EXPORT_LOSE     = "导出失败";

    public final static String     PUBLISH_SUCCESS = "发布成功";

    public final static String     PUBLISH_LOSE    = "发布失败";

    public final static String     CANCEL_SUCCESS  = "取消成功";

    public final static String     CANCEL_LOSE     = "取消失败";

    public final static String     AUDIT_SUCCESS   = "审核成功";

    public final static String     AUDIT_LOSE      = "审核失败";

    public final static String     UNAUDIT_SUCCESS = "审核不通过成功";

    public final static String     UNAUDIT_LOSE    = "审核不通过失败";

    public final static String     SAVE_SUCCESS    = "保存成功";

    public final static String     SAVE_LOSE       = "保存失败";

    public final static String     UPLOAD_SUCCESS  = "上传成功";

    public final static String     UPLOAD_LOSE     = "上传失败";

    public final static String     DELETE_SUCCESS  = "删除成功";

    public final static String     DELETE_LOSE     = "删除失败";

    public final static String     IMPORT_NO_DATA  = "导入的文件没有数据或者模版不正确";

    public final static String     IMPORT_NO_FILE  = "没有导入文件";

    public static List<LabelValue> BASEDATA_TYPES  = Lists.newArrayList();

    public static String           picpath;

    public static List<LabelValue> newsTypeList    = Lists.newArrayList();

    static
    {
        BASEDATA_TYPES.add(new LabelValue("0", "学历"));
        BASEDATA_TYPES.add(new LabelValue("1", "类别"));
        picpath = PropertyUtils.getProperty("upload.path");
        /** 行情资讯分类 **/
        newsTypeList.add(new LabelValue("zcfg", "政策法规"));// ----0
        newsTypeList.add(new LabelValue("rdzx", "热点资讯"));// ----1
        newsTypeList.add(new LabelValue("hyxw", "行业新闻"));// ----2
        newsTypeList.add(new LabelValue("zhbd", "展会报道"));// ----3
        newsTypeList.add(new LabelValue("zsdt", "技术动态"));// ----4
        newsTypeList.add(new LabelValue("zkzy", "竹库资源"));// ----5

    }

}
