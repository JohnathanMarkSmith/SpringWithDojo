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
	<h2>Customer Registration</h2>

	<form:form commandName="customer" id="customer">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<div id="container">
			<table>
				<tr>
					<td><b>Active</n></td>
					<td><form:radiobutton tabIndex="1" value="A" path="type"
							id="Active" /></td>
				</tr>
				<tr>
					<td><b>Retired</b></td>
					<td><form:radiobutton tabIndex="2" value="R" path="type"
							id="Retired" /> <script type="text/javascript">
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
								Spring.addDecoration(new Spring.ElementDecoration(
												{
													elementId : 'Retired',
													widgetType : "dijit.form.RadioButton",
													widgetModule : "dijit.form.CheckBox",
													widgetAttrs : {
														value : "R",
														required : true,
														promptMessage : "For Retired"
													}
												}));
							</script></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="sex" /></font><b>Sex:
					</b></td>
					<td><form:select path="sex" id="sex">
							<form:option value="MALE" label="MALE" />
							<form:option value="FEMALE" label="FEMALE" />
						</form:select> 
						<script type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "sex",
							widgetType : "dijit.form.Select",
							widgetAttrs : {
							promptMessage : "Enter Borough",
							required : true }}));
						 </script>  
	                     
    						    
		
<br />
						<p></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="name" /></font><b>Name:
					</b></td>
					<td><form:input path="name" class="value" /> <script
							type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "name",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Enter Name",
								required : true
							}
						}));
					</script> <br />
						<p></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="phoneNumber" /></font>

						<b>Phone number: </b></td>
					<td>
						<div class="span-7 last">
							<form:input path="phoneNumber" /> (10 numbers)
						</div> <script type="text/javascript">
							Spring
									.addDecoration(new Spring.ElementDecoration(
											{
												elementId : "phoneNumber",
												widgetType : "dijit.form.ValidationTextBox",
												widgetAttrs : {
													required : true,
													invalidMessage : "A 10-digit number is required.",
													regExp : "[0-9]{10}"
												}
											}));
						</script> <br />
					</td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="address" /></font> <b>Address:
					</b></td>
					<td><form:input path="address" /> <script
							type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "address",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Enter Address",
								required : true
							}
						}));
					</script> <br /></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="city" /></font> <b>City:
					</b></td>
					<td><form:input path="city" /> <script type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "city",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Enter City",
								required : true
							}
						}));
					</script> <br /></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="state" /></font> <b>State:
					</b></td>
					<td><form:input path="state" /> <script
							type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "state",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Enter State",
								required : true
							}
						}));
					</script> <br /></td>
				</tr>
				<tr>
					<td><font color=red><form:errors path="zipCode" /></font> <b>Zip
							Code: </b></td>
					<td><form:input path="zipCode" /> <script
							type="text/javascript">
						Spring.addDecoration(new Spring.ElementDecoration({
							elementId : "zipCode",
							widgetType : "dijit.form.ValidationTextBox",
							widgetAttrs : {
								promptMessage : "Enter Zip Code",
								required : true
							}
						}));
					</script> <br /></td>
				</tr>
			</table>
		</div>

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