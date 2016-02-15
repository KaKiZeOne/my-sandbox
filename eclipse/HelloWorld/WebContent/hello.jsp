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
		<h:outputText value="#{msg.hello_title}" />
	</h1>
	<h:messages />
	<h:form id="helloForm">
		<p>
			<h:outputLabel for="" value="#{msg.hello_input}" />
			<h:inputText id="nbControls" required="true"
				value="#{helloBean.nbControls}">
				<f:validateLongRange minimum="1" maximum="30" />
			</h:inputText>
		</p>
		<p>
			<h:panelGrid id="helloGrid" rendered="#{helloBean.nbControls >0}"
				border="1" columns="10" cellspacing="0" />
		</p>
		<p>
			<h:commandButton id="redisplay"
				actionListener="#{helloBean.redisplay}"
				value="#{msg.hello_redisplay}" title="#{msg.hello_redisplay_info}" />
			<h:commandButton id="goodbye" action="goodbye"
				value="#{msg.hello_goodbye}" title="#{msg.hello_goodbye_info}" />
		</p>
	</h:form>
</body>
	</html>
</f:view>