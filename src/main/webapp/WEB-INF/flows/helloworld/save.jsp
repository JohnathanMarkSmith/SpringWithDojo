<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Spring 3.0 MVC - Web Flow Example</title>
</head>
<body>
    <p><b><i><h1>THE FOLLOWING INFORMATION WOULD OF BEEN SAVED!!</i></b>
    <p>
    <h2>Customer Registration</h2>
    
      <b>Name: </b>${customer.name}<br/>
      <p>
      <b>Phone number: </b>${customer.phoneNumber}<br/>
      <b>Address: </b>${customer.address}<br/>
      <b>City: </b>${customer.city}<br/>
      <b>State: </b>${customer.state}<br/>
      <b>Zip Code: </b>${customer.zipCode}<br/>
	<p>
		[<a href="${flowExecutionUrl}&_eventId=accept">Accept</a> ]
	
</body>
</html>