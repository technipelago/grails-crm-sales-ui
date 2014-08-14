<table class="table table-striped">
    <thead>
    <tr>
        <th><g:message code="crmSalesProject.name.label" default="Project"/></th>
        <th><g:message code="crmSalesProject.customer.label" default="Contact"/></th>
        <th><g:message code="crmSalesProjectRole.type.label" default="Role"/></th>
        <th><g:message code="crmSalesProject.status.label" default="Status"/></th>
        <th><g:message code="crmSalesProject.date2.label" default="Date 2"/></th>
        <th><g:message code="crmSalesProject.value.label" default="Value"/></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${result}" var="roleInstance">
        <g:set var="project" value="${roleInstance.project}"/>
        <tr>

            <td>
                <g:link controller="crmSalesProject" action="show" id="${project.id}" fragment="roles">
                    ${fieldValue(bean: project, field: "name")}
                </g:link>
            </td>

            <td>
                <g:link controller="crmSalesProject" action="show" id="${project.id}" fragment="roles">
                    ${fieldValue(bean: roleInstance, field: "contact")}
                </g:link>
            </td>

            <td>

                ${fieldValue(bean: roleInstance, field: "type")}

            </td>

            <td>

                ${fieldValue(bean: project, field: "status")}

            </td>

            <td class="nowrap">

                <g:formatDate type="date" date="${project.date2}"/>

            </td>

            <td class="money nowrap">
                <g:formatNumber number="${project.value}" maxFractionDigits="0"
                                type="currency" currencyCode="${project.currency ?: 'EUR'}"/>
            </td>

        </tr>
    </g:each>
    </tbody>
</table>

<g:if test="${createParams}">
    <div class="form-actions btn-toolbar">
        <crm:button type="link" group="true" action="create" visual="success"
                    icon="icon-file icon-white"
                    label="crmSalesProject.button.create.label"
                    title="crmSalesProject.button.create.help"
                    permission="crmSalesProject:create"
                    params="${createParams}">
        </crm:button>
    </div>
</g:if>