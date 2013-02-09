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
	<h2>CheckBox  and Form Button Test</h2>
	<p>
	<p>
	<form:form commandName="customer" id="customer">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<div id="container">
			<table>
				<tr>
					<td><font color=red><form:errors path="sex" /></font><b>Do you have a kid(s) of the follow sex type:</b></td>
					<td><form:checkbox path="sex" id="MALE" value="MALE" /> MALE |
					    <script type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'MALE',
													widgetType : "dijit.form.CheckBox",
													widgetModule : "dijit.form.CheckBox",
													validate: function (){
												           if(dojo.query('INPUT[name=sex]', 'customer').filter(function(n){return n.checked;}).length > 0){return true;} else {alert('choose a type');return false;}
												      },
													widgetAttrs : {
														value : "MALE",
														required : true,
														promptMessage : "For Retired"
													}
												}));
							</script>  
					    <form:checkbox path="sex" id="FEMALE" value="FEMALE" />FEMALE
					    <script type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'FEMALE',
													widgetType : "dijit.form.CheckBox",
													widgetModule : "dijit.form.CheckBox",
													widgetAttrs : {
														value : "FEMALE",
														required : true,
														promptMessage : "For Retired"
													}
												}));
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