<div class="fieldcontain">
	<label for="text">
		<g:message code="choice.text.label" default="Text" />

	</label>
	<g:textField name="text" value="${choiceInstance?.text}"/>
</div>

<div class="fieldcontain required">
	<label for="value">
		<g:message code="choice.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" type="number" value="${choiceInstance?.value}" required=""/>
</div>

