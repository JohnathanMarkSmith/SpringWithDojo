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
	<h2>Radiobutton Test</h2>

	<form:form commandName="customer" id="customer">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<div id="container">
			<table>
				<tr>
					<td><b>Active</b></td>
					<td><form:radiobutton tabIndex="2" value="A" path="type"
							id="Active" /> <script type="text/javascript">
								Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'Active',
													widgetType : "dijit.form.RadioButton",
													widgetModule : "dijit.form.CheckBox",
													widgetAttrs : {
														value : "A",
														required : true,
														promptMessage : "For Active"
													}
												}));
									</script></td>
				</tr>
				
				<tr>
					<td><b>Retired</b></td>
					<td><form:radiobutton tabIndex="2" value="R" path="type"
							id="Retired" /> <script type="text/javascript">
											Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'Retired',
													widgetType : "dijit.form.RadioButton",
													widgetModule : "dijit.form.CheckBox",
													validate: function (){
												           if(dojo.query('INPUT[name=type]', 'customer').filter(function(n){return n.checked;}).length > 0){return true;} else {alert('choose a type');return false;}
												      },
													widgetAttrs : {
														value : "R",
														required : true,
														promptMessage : "For Retired"
													}
												}));
							</script></td>
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