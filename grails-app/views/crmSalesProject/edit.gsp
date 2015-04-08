<%@ page import="grails.plugins.crm.sales.CrmSalesProject" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'crmSalesProject.label', default: 'Sales Opportunity')}"/>
    <title><g:message code="crmSalesProject.edit.title" args="[entityName, crmSalesProject]"/></title>
    <r:require modules="datepicker,autocomplete"/>
    <r:script>
    $(document).ready(function() {
        <crm:datepicker selector=".date"/>
        });
    </r:script>
</head>

<body>

<crm:header title="crmSalesProject.edit.title" subtitle="${crmSalesProject.customer?.encodeAsHTML()}"
            args="[entityName, crmSalesProject]"/>

<g:hasErrors bean="${crmSalesProject}">
    <crm:alert class="alert-error">
        <ul>
            <g:eachError bean="${crmSalesProject}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </crm:alert>
</g:hasErrors>

<g:form action="edit">

    <g:hiddenField name="id" value="${crmSalesProject?.id}"/>
    <g:hiddenField name="version" value="${crmSalesProject?.version}"/>

    <g:hiddenField name="currency" value="${crmSalesProject.currency}"/>


    <div class="tabbable">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#main" data-toggle="tab"><g:message
                    code="crmSalesProject.tab.main.label"/></a>
            </li>
            <li><a href="#desc" data-toggle="tab" accesskey="d"><g:message
                    code="crmSalesProject.tab.desc.label"/></a></li>

        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="main">
                <div class="row-fluid">

                    <div class="span4">
                        <div class="row-fluid">

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.name.label"/>
                                </label>

                                <div class="controls">
                                    <g:textField name="name" value="${crmSalesProject.name}" class="span11" autofocus=""/>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.number.label"/>
                                </label>

                                <div class="controls">
                                    <g:textField name="number" value="${crmSalesProject.number}" class="span6"/>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.product.label"/>
                                </label>

                                <div class="controls">
                                    <g:textField name="product" value="${crmSalesProject.product}" class="span11"/>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="span4">
                        <div class="row-fluid">
                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.status.label"/>
                                </label>

                                <div class="controls">
                                    <g:select name="status.id" from="${metadata.statusList}"
                                              optionKey="id"
                                              value="${crmSalesProject.status?.id}" class="span11"/>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.probability.label"/>
                                </label>

                                <div class="controls">

                                    <g:select name="probability" from="${metadata.probabilityList}"
                                              optionKey="${{ formatNumber(number: it, maxFractionDigits: 1) }}"
                                              optionValue="${{ formatNumber(number: it, type: 'percent') }}"
                                              value="${formatNumber(number: crmSalesProject.probability, maxFractionDigits: 1)}"
                                              class="span11"/>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.value.label"/>
                                </label>

                                <div class="controls">

                                    <g:textField name="value"
                                                 value="${fieldValue(bean: crmSalesProject, field: 'value')}"
                                                 class="span10"/>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.username.label"/>
                                </label>

                                <div class="controls">
                                    <g:select name="username" from="${metadata.userList}" optionKey="username"
                                              optionValue="name"
                                              noSelection="${['': '']}"
                                              value="${crmSalesProject.username}" class="span11"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="span4">
                        <div class="row-fluid">

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.date1.label"/>
                                </label>

                                <div class="controls">
                                    <div class="input-append date"
                                         data-date="${formatDate(type: 'date', date: crmSalesProject.date1 ?: new Date())}">
                                        <g:textField name="date1" class="span11" size="10"
                                                     value="${formatDate(type: 'date', date: crmSalesProject.date1)}"/><span
                                            class="add-on"><i class="icon-th"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.date2.label"/>
                                </label>

                                <div class="controls">
                                    <div class="input-append date"
                                         data-date="${formatDate(type: 'date', date: crmSalesProject.date2 ?: new Date())}">
                                        <g:textField name="date2" class="span11" size="10"
                                                     value="${formatDate(type: 'date', date: crmSalesProject.date2)}"/><span
                                            class="add-on"><i class="icon-th"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.date3.label"/>
                                </label>

                                <div class="controls">
                                    <div class="input-append date"
                                         data-date="${formatDate(type: 'date', date: crmSalesProject.date3 ?: new Date())}">
                                        <g:textField name="date3" class="span11" size="10"
                                                     value="${formatDate(type: 'date', date: crmSalesProject.date3)}"/><span
                                            class="add-on"><i class="icon-th"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">
                                    <g:message code="crmSalesProject.date4.label"/>
                                </label>

                                <div class="controls">
                                    <div class="input-append date"
                                         data-date="${formatDate(type: 'date', date: crmSalesProject.date4 ?: new Date())}">
                                        <g:textField name="date4" class="span11" size="10"
                                                     value="${formatDate(type: 'date', date: crmSalesProject.date4)}"/><span
                                            class="add-on"><i class="icon-th"></i></span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

            <div class="tab-pane" id="desc">
                <div class="control-group">
                    <label class="control-label">
                        <g:message code="crmSalesProject.description.label"/>
                    </label>

                    <div class="controls">
                        <g:textArea name="description" rows="10" cols="80"
                                    value="${crmSalesProject.description}" class="span11"/>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="form-actions">
        <crm:button visual="warning" icon="icon-ok icon-white" label="crmSalesProject.button.update.label"/>
        <crm:button action="delete" visual="danger" icon="icon-trash icon-white"
                    label="crmSalesProject.button.delete.label"
                    confirm="crmSalesProject.button.delete.confirm.message" permission="crmSalesProject:delete"/>
        <crm:button type="link" action="show" id="${crmSalesProject.id}"
                    icon="icon-remove"
                    label="crmSalesProject.button.cancel.label"/>
    </div>

</g:form>

</body>
</html>
