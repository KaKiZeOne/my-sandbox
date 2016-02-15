<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<!DOCTYPE html>
<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><h:outputText value="#{msg.app_title}"></h:outputText></title>
</head>
<body>
	<h1>
		<h:outputText value="#{msg.goodbye_title}"></h:outputText>
	</h1>
	<h:outputFormat value="#{msg.goodbye_result}">
		<f:param value="#{helloBean.nbControls}" />
	</h:outputFormat>
</body>
	</html>
</f:view>