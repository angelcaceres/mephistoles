<%@ page import="mephistopheles.Clabe" %>



<div class="fieldcontain ${hasErrors(bean: clabeInstance, field: 'clabe', 'error')} required">
	<label for="clabe">
		<g:message code="clabe.clabe.label" default="Clabe" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clabe" maxlength="18" required="" value="${clabeInstance?.clabe}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clabeInstance, field: 'bank', 'error')} required">
	<label for="bank">
		<g:message code="clabe.bank.label" default="Bank" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="bank" from="${clabeInstance.constraints.bank.inList}" required="" value="${clabeInstance?.bank}" valueMessagePrefix="clabe.bank"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clabeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="clabe.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${clabeInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clabeInstance, field: 'deleted', 'error')} ">
	<label for="deleted">
		<g:message code="clabe.deleted.label" default="Deleted" />
		
	</label>
	<g:checkBox name="deleted" value="${clabeInstance?.deleted}" />

</div>

