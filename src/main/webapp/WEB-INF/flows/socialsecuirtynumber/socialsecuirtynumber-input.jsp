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
<script type="text/javascript">dojo.require("dojo.parser");
dojo.require("dojox.validate.us");
</script>

<html>
<head>
<title>Spring 3.0 MVC - Web Flow Example</title>
</head>
<body class="claro">
	<h2>Social Secuirty Test</h2>

	<form:form commandName="customer" id="customer">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<div id="container">
			<table>
				<tr>
					<td valign="top" size="+1"><b>Name:</b></td>
					<td valign="top"><form:input path="name" class="value" placeholder="Your SSN" /> <script
							type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "name",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Please enter your social security number",
								invalidMessage : "Invalid US Social Security Number",
								placeholder: "Your SSN",
								required : true,
								validator: dojox.validate.us.isSocialSecurityNumber,
					            trim : true
							}
						}));
					</script> <br />
						<p></td>
				</tr>
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

		<script type="text/javascript">
			Spring.addDecoration(new Spring.ValidateAllDecoration({
				elementId : 'submit',
				event : 'onclick'
			}));
			
			Spring.addDecoration(new Spring.AjaxEventDecoration({
			     elementId: "sex",
			     event: "onChange",
			     formId:"customer",
			     params: {fragments:"body", _eventId: "loadSchools"}}));
		</script>
	</form:form>

</body>
</html>