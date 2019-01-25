<%@ page import="mephistopheles.Github" %>



<div class="fieldcontain ${hasErrors(bean: githubInstance, field: 'gitUserName', 'error')} ">
	<label for="gitUserName">
		<g:message code="github.gitUserName.label" default="Git User Name" />
		
	</label>
	<g:textField name="gitUserName" value="${githubInstance?.gitUserName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: githubInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="github.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${githubInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: githubInstance, field: 'gitKey', 'error')} ">
	<label for="gitKey">
		<g:message code="github.gitKey.label" default="Git Key" />
		
	</label>
	<g:checkBox name="gitKey" value="${githubInstance?.gitKey}" />

</div>

