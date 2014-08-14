<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'crmSalesProjectStatus.label', default: 'Project Status')}"/>
    <title><g:message code="crmSalesProjectStatus.edit.title" args="[entityName, crmSalesProjectStatus]"/></title>
</head>

<body>

<crm:header title="crmSalesProjectStatus.edit.title" args="[entityName, crmSalesProjectStatus]"/>

<div class="row-fluid">
    <div class="span9">

        <g:hasErrors bean="${crmSalesProjectStatus}">
            <crm:alert class="alert-error">
                <ul>
                    <g:eachError bean="${crmSalesProjectStatus}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </crm:alert>
        </g:hasErrors>

        <g:form class="form-horizontal" action="edit" id="${crmSalesProjectStatus?.id}">
            <g:hiddenField name="version" value="${crmSalesProjectStatus?.version}"/>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.name.label"/>
                </label>

                <div class="controls">
                    <g:textField name="name" value="${crmSalesProjectStatus.name}" class="span12" autofocus=""/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.description.label"/>
                </label>

                <div class="controls">
                    <g:textField name="description" value="${crmSalesProjectStatus.description}" class="span12"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.param.label"/>
                </label>

                <div class="controls">
                    <g:textField name="param" value="${crmSalesProjectStatus.param}" class="span12"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.icon.label"/>
                </label>

                <div class="controls">
                    <g:textField name="icon" value="${crmSalesProjectStatus.icon}" class="span12"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.orderIndex.label"/>
                </label>

                <div class="controls">
                    <g:textField name="orderIndex" value="${crmSalesProjectStatus.orderIndex}" class="span12"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.enabled.label"/>
                </label>

                <div class="controls">
                    <g:checkBox name="enabled" value="true" checked="${crmSalesProjectStatus.enabled}"/>
                </div>
            </div>

            <div class="form-actions">
                <crm:button visual="warning" icon="icon-ok icon-white" label="crmSalesProjectStatus.button.update.label"/>
                <crm:button action="delete" visual="danger" icon="icon-trash icon-white"
                            label="crmSalesProjectStatus.button.delete.label"
                            confirm="crmSalesProjectStatus.button.delete.confirm.message"
                            permission="crmSalesProjectStatus:delete"/>
                                <crm:button type="link" action="list"
                            icon="icon-remove"
                            label="crmSalesProjectStatus.button.cancel.label"/>
            </div>
        </g:form>
    </div>

    <div class="span3">
        <crm:submenu/>
    </div>
</div>
</body>
</html>
