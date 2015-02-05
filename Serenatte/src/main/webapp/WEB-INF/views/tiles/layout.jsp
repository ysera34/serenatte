<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title"></tiles:getAsString></title>
<link rel="shortcut icon" type="image/x-icon" href="resources/custom/images/icon/coffee.ico">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="resources/custom/css/main.css">
<link rel="stylesheet" href="resources/custom/css/cafe.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<header id="uppermost-header"><tiles:insertAttribute name="header"></tiles:insertAttribute></header>
	<nav id="uppermost-nav"><tiles:insertAttribute name="nav"></tiles:insertAttribute></nav>
	<section id="uppermost-section"><tiles:insertAttribute name="section"></tiles:insertAttribute></section>
	<footer id="uppermost-footer"><tiles:insertAttribute name="footer"></tiles:insertAttribute></footer>
</body>
</html>