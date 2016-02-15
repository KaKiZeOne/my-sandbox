## JSF 

Old namespace | JSF 2.2 namespace
http://java.sun.com/jsf/core | http://xmlns.jcp.org/jsf/core 
http://java.sun.com/jsf/html | http://xmlns.jcp.org/jsf/html 
http://java.sun.com/jsf/facelets | http://xmlns.jcp.org/jsf/facelets 
http://java.sun.com/jsf/composite | http://xmlns.jcp.org/jsf/composite 
http://java.sun.com/jsp/jstl/core | http://xmlns.jcp.org/jsp/jstl/core 
http://java.sun.com/jsp/jstl/functions | http://xmlns.jcp.org/jsp/jstl/functions 


## JSF security
<security-constraint>
    <display-name>Restrict direct access to XHTML files</display-name>
    <web-resource-collection>
        <web-resource-name>XHTML files</web-resource-name>
        <url-pattern>*.xhtml</url-pattern>
    </web-resource-collection>
    <auth-constraint />
</security-constraint> 
<security-constraint>
    <display-name>Restrict direct access to the /resources folder.</display-name>
    <web-resource-collection>
        <web-resource-name>The /resources folder.</web-resource-name>
        <url-pattern>/resources/*</url-pattern>
    </web-resource-collection>
    <auth-constraint />
</security-constraint>

##JSF Use another extension
<servlet-mapping>
  <servlet-name>Faces Servlet</servlet-name>
  <url-pattern>*.do</url-pattern>
</servlet-mapping>
<context-param>
  <param-name>javax.faces.DEFAULT_SUFFIX</param-name>
  <param-value>.xhtml</param-value>
</context-param>

## JSF templating
<ui:composition template="/WEB-INF/templates/template.xhtml"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:f="http://java.sun.com/jsf/core"
    xmlns:h="http://java.sun.com/jsf/html"
    xmlns:ui="http://java.sun.com/jsf/facelets"
>
    <ui:define name="content">
        ...
        <ui:include src="/WEB-INF/includes/include.xhtml" />
        ...
    </ui:define>
</ui:composition
