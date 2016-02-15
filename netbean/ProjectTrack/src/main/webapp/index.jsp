<%-- 
    Document   : index
    Created on : 14 févr. 2016, 00:14:50
    Author     : Karim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://xmlns.jcp.org/jsf/core"%>
<%@taglib prefix="h" uri="http://xmlns.jcp.org/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title><h:outputText value="#{msg.app_title}"/></title>
        </head>
        <body>
            <h1><h:outputText value="#{msg.app_welcome}"/></h1>
            <b>TEST1</b>
        </body>
    </html>
</f:view>
