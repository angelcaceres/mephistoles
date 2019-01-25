<%@ page import="mephistopheles.Files" %>



<div class="fieldcontain ${hasErrors(bean: filesInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="files.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${filesInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filesInstance, field: 'profilePicture', 'error')} required">
	<label for="profilePicture">
		<g:message code="files.profilePicture.label" default="Profile Picture" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="profilePicture" name="profilePicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: filesInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="files.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${filesInstance?.user?.id}" class="many-to-one"/>

</div>

