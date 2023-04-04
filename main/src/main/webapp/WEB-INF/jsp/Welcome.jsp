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
<script type="text/javascript">
    $(document).ready(function (){
        $('#category').change(function() {
            var categoryId = $(this).val();
            $.ajax({
                url: '<s:url action="getProducts"/>',
                method: 'post',
                data: {categoryId: categoryId},
                dataType: 'json',
                success: function(response) {
                    $('#product').empty();
                    $.each(response, function(index, value) {
                        $('#product').append('<option value="' + value.productId + '">' + value.name + '</option>');
                    });
                }
            });
        });
    });
</script>
<body>
Welcome
<br>
Selected:
<br>
<bean:write name="testForm" property="selectedCustomer"/>
<br>
<bean:define id="thisbeans" name="testForm" property="customers" type="java.util.Map"/>
 <html:form action="/welcome.do?action=welcomesubmit" method="post">
<%--    <html:text property="selectedCustomer" />--%>
    <html:select property="selectedCustomer">
       <html:options
               collection="thisbeans"
               property="value"
               labelProperty="key"
       />
    </html:select>
    <html:submit value="Submit"  />
 </html:form>



</body>
</html>
