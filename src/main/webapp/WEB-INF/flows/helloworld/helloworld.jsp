<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>Spring 3.0 MVC - Web Flow Example</title>
</head>
<body>
    <h2>Customer Registration</h2>
    
    <form:form commandName="customer">
      <input type="hidden" name="_flowExecutionKey"  value="${flowExecutionKey}"/>
     <table>
     <tr><td>
      <font color=red><form:errors path="name" /></font><b>Name: </b>
       </td><td>
       <form:input path="name"/><br/><p>
      </td></tr><tr><td>
      <font color=red><form:errors path="phoneNumber" /></font>
      
      <b>Phone number: </b></td><td><form:input path="phoneNumber"/><br/>
      </td></tr><tr><td>
      <font color=red><form:errors path="address" /></font>
      
      <b>Address: </b></td><td><form:input path="address"/><br/>
      </td></tr><tr><td>
      <font color=red><form:errors path="city" /></font>
      
      <b>City: </b></td><td><form:input path="city"/><br/>
      </td></tr><tr><td>
      <font color=red><form:errors path="state" /></font>
      
      <b>State: </b></td><td><form:input path="state"/><br/>
      
      </td></tr><tr><td>
      <font color=red><form:errors path="zipCode" /></font>
      <b>Zip Code: </b>
      </td><td>
      <form:input path="zipCode"/><br/>
      </td></tr>
      </table>
      <input type="submit" name="_eventId_submit"   value="Submit" />
    
    </form:form>
    
	</body>
</html>