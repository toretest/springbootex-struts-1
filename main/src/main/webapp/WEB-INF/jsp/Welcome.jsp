<%@ page import="java.util.Map" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>This is a simple welkome jsp page.</title>
</head>
<body>
Welcome
<br>
Hello
 <html:form action="/updateAccountInfo.do">
    <input type="hidden" name="method" value="message" />
 </html:form>
</body>
</html>
