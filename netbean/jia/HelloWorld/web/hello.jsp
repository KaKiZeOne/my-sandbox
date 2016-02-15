<%-- 
    Document   : hello
    Created on : 14 févr. 2016, 20:39:51
    Author     : Karim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<f:view>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSF in Action - Hello, world!</title>
        </head>
        <body>
            <h1>Welcome to JavaServer Faces!</h1>
            <h:form>
                <p><h:message for="helloInput"/></p>
                <h:outputLabel for="helloInput" value="Enter a number of controls to display:"/>
                <h:inputText id="helloInput" value="#{helloBean.numControls}" required="true">
                    <f:validateLongRange minimum="1" maximum="99"/>
                </h:inputText>
                <h:panelGrid id="controlPanel" rendered="#{helloBean.numControls > 0}"
                             binding="#{helloBean.controlPanel}"
                             columns="20" border="1" cellspacing="0">
                </h:panelGrid>
                <h:panelGroup>
                    <h:commandButton actionListener="#{helloBean.redisplay}" value="Redisplay"/>
                    <h:commandButton action="goodbye" value="Goodbye"/>
                </h:panelGroup> 
            </h:form>
        </body>
    </html>
</f:view>