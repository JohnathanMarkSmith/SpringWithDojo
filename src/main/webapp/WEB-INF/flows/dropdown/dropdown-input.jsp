<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<style type="text/css" media="screen">
 @import url("<c:url value="/resources/dojo/resources/dojo.css"/>");
 @import url("<c:url value="/resources/dijit/themes/claro/claro.css"/>");
</style>     

<script djconfig="parseOnLoad: true"
 src="<c:url value="/resources/dojo/dojo.js"/>" type="text/javascript"></script>
<script type="text/javascript"
 src="<c:url value="/resources/spring/Spring.js" />"> </script>
<script type="text/javascript"
 src="<c:url value="/resources/spring/Spring-Dojo.js" />"></script>
<script type="text/javascript">dojo.require("dojo.parser");</script>

<html>
<head>
<title>Spring 3.0 MVC - Web Flow Example</title>
</head>
<body class="claro">
	<h2>Dropdown Test</h2>
	<p>
	<p>
	<form:form commandName="customer" id="customer">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<div id="container">
			<table>
				<tr>
					<td><font color=red><form:errors path="sex" /></font><b>Sex:</b></td>
					<td><form:select path="sex" id="sex" name="sex">
							<form:option value="MALE" label="MALE" />
							<form:option value="FEMALE" label="FEMALE" />
						</form:select > 
						<script type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "sex",
							widgetType : "dijit.form.Select",
							widgetAttrs : {
							promptMessage : "Enter Sex",
							required : true, 
							onChange : function() {
					            Spring.remoting.submitForm(
					                'submit', 
					                'customer', 
					                {_eventId: 'sexchange', fragments:'contents'}
					             ); 
					             return false;
					        } }}));
						
						
		    		</script>
						</td></tr>
						
					<tr>
					<td><font color=red><form:errors path="name" /></font><b>Name:</b></td>
					<td><form:select path="name" id="name" items="${selectableList}">
					</form:select >
					<script type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "name",
							widgetType : "dijit.form.Select",
							widgetAttrs : {
							promptMessage : "Enter Name",
							required : false
							}}));
		    		</script>
					</td></tr>
				</table>
		</div>
		<p>
		<input type="submit" name="_eventId_submit" id="submit" value="Submit" />
		<script type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'submit',
													widgetType : "dijit.form.Button",
													widgetModule : "dijit.form.Button",
													widgetAttrs : {
														label: "Submit Page",
														promptMessage : "Click here to submit page"
													}
													
												}));
							</script> 
		<p>
		<script type="text/javascript">
			Spring.addDecoration(new Spring.ValidateAllDecoration({
				elementId : 'submit',
				event : 'onclick'
			}));
		</script>
	</form:form>
</body>
</html>