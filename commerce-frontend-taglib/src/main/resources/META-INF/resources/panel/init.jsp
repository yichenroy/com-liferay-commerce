<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@
taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="liferay-ui" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %><%@
taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>

<%@ page import="com.liferay.portal.kernel.util.Validator" %>

<liferay-theme:defineObjects />

<%
String title = (String)request.getAttribute("liferay-commerce:panel:title");
String actionUrl = (String)request.getAttribute("liferay-commerce:panel:actionUrl");
String actionLabel = (String)request.getAttribute("liferay-commerce:panel:actionLabel");
String actionIcon = (String)request.getAttribute("liferay-commerce:panel:actionIcon");
String actionTargetId = (String)request.getAttribute("liferay-commerce:panel:actionTargetId");
String showMoreId = (String)request.getAttribute("liferay-commerce:panel:showMoreId");
String showMoreUrl = (String)request.getAttribute("liferay-commerce:panel:showMoreUrl");

String elementClasses = (String)request.getAttribute("liferay-commerce:panel:elementClasses");
String bodyClasses = (String)request.getAttribute("liferay-commerce:panel:bodyClasses");
String randomNamespace = (String)request.getAttribute("liferay-commerce:panel:randomNamespace");

String linkId = Validator.isNotNull(actionTargetId) ? actionTargetId : (randomNamespace + "header-link");
String showMoreButtonId = Validator.isNotNull(showMoreId) ? showMoreId : (randomNamespace + "show-more-button");
String showMoreButtonWrapperId = randomNamespace + "show-more-button-wrapper";
%>