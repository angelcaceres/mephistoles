<%@ page import="mephistopheles.Vacations" %>



<div class="fieldcontain ${hasErrors(bean: vacationsInstance, field: 'dateOfRequest', 'error')} required">
	<label for="dateOfRequest">
		<g:message code="vacations.dateOfRequest.label" default="Date Of Request" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfRequest" precision="day"  value="${vacationsInstance?.dateOfRequest}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: vacationsInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="vacations.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${vacationsInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: vacationsInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="vacations.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${vacationsInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: vacationsInstance, field: 'approved', 'error')} ">
	<label for="approved">
		<g:message code="vacations.approved.label" default="Approved" />
		
	</label>
	<g:checkBox name="approved" value="${vacationsInstance?.approved}" />

</div>

<div class="fieldcontain ${hasErrors(bean: vacationsInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="vacations.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${vacationsInstance?.user?.id}" class="many-to-one"/>

</div>

