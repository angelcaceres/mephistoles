<%@ page import="mephistopheles.Equipment" %>



<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="equipment.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${equipmentInstance.constraints.type.inList}" required="" value="${equipmentInstance?.type}" valueMessagePrefix="equipment.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'make', 'error')} required">
	<label for="make">
		<g:message code="equipment.make.label" default="Make" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="make" required="" value="${equipmentInstance?.make}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'model', 'error')} required">
	<label for="model">
		<g:message code="equipment.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model" required="" value="${equipmentInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'serialNumber', 'error')} required">
	<label for="serialNumber">
		<g:message code="equipment.serialNumber.label" default="Serial Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="serialNumber" required="" value="${equipmentInstance?.serialNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'dateOfPurchase', 'error')} required">
	<label for="dateOfPurchase">
		<g:message code="equipment.dateOfPurchase.label" default="Date Of Purchase" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfPurchase" precision="day"  value="${equipmentInstance?.dateOfPurchase}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'dateOfAssignment', 'error')} ">
	<label for="dateOfAssignment">
		<g:message code="equipment.dateOfAssignment.label" default="Date Of Assignment" />
		
	</label>
	<g:datePicker name="dateOfAssignment" precision="day"  value="${equipmentInstance?.dateOfAssignment}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="equipment.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="price" required="" value="${equipmentInstance?.price}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'dateOfUnassignment', 'error')} ">
	<label for="dateOfUnassignment">
		<g:message code="equipment.dateOfUnassignment.label" default="Date Of Unassignment" />
		
	</label>
	<g:datePicker name="dateOfUnassignment" precision="day"  value="${equipmentInstance?.dateOfUnassignment}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="equipment.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${equipmentInstance?.user?.id}" class="many-to-one"/>

</div>

