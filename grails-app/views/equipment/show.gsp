
<%@ page import="mephistopheles.Equipment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-equipment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-equipment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list equipment">
			
				<g:if test="${equipmentInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="equipment.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${equipmentInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.make}">
				<li class="fieldcontain">
					<span id="make-label" class="property-label"><g:message code="equipment.make.label" default="Make" /></span>
					
						<span class="property-value" aria-labelledby="make-label"><g:fieldValue bean="${equipmentInstance}" field="make"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="equipment.model.label" default="Model" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${equipmentInstance}" field="model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.serialNumber}">
				<li class="fieldcontain">
					<span id="serialNumber-label" class="property-label"><g:message code="equipment.serialNumber.label" default="Serial Number" /></span>
					
						<span class="property-value" aria-labelledby="serialNumber-label"><g:fieldValue bean="${equipmentInstance}" field="serialNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.dateOfPurchase}">
				<li class="fieldcontain">
					<span id="dateOfPurchase-label" class="property-label"><g:message code="equipment.dateOfPurchase.label" default="Date Of Purchase" /></span>
					
						<span class="property-value" aria-labelledby="dateOfPurchase-label"><g:formatDate date="${equipmentInstance?.dateOfPurchase}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.dateOfAssignment}">
				<li class="fieldcontain">
					<span id="dateOfAssignment-label" class="property-label"><g:message code="equipment.dateOfAssignment.label" default="Date Of Assignment" /></span>
					
						<span class="property-value" aria-labelledby="dateOfAssignment-label"><g:formatDate date="${equipmentInstance?.dateOfAssignment}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="equipment.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${equipmentInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.dateOfUnassignment}">
				<li class="fieldcontain">
					<span id="dateOfUnassignment-label" class="property-label"><g:message code="equipment.dateOfUnassignment.label" default="Date Of Unassignment" /></span>
					
						<span class="property-value" aria-labelledby="dateOfUnassignment-label"><g:formatDate date="${equipmentInstance?.dateOfUnassignment}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="equipment.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${equipmentInstance?.user?.id}">${equipmentInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:equipmentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${equipmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
