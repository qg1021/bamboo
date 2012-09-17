<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="common" uri="http://www.common.lib/tags/util" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="appurl" value="<%=Global.appurl%>"/>