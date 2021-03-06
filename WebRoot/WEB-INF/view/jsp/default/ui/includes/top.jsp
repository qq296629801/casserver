<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page session="true"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<spring:theme code="mobile.custom.css.file" var="mobileCss" text="" />
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<title>业务系统</title>
<c:if
	test="${not empty requestScope['isMobile'] and not empty mobileCss}">
	<meta name="viewport"
		content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
</c:if>
<spring:theme code="standard.custom.css.file" var="customCssFile" />
<link type="text/css" rel="stylesheet"
	href="<c:url value="${customCssFile}" />" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body id="cas" class="fl-theme-iphone">
	<div class="flc-screenNavigator-view-container">
		<div class="fl-screenNavigator-view">
			<div id="content" class="fl-screenNavigator-scroll-container">