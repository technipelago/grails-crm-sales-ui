<%@ page import="grails.plugins.crm.core.DateUtils" defaultCodec="html" %>

<h4><g:message code="crmSalesProject.summary.title"/></h4>

<p>

    <g:message code="crmSalesProject.summary.name" args="${[bean.name]}"/>

    <g:if test="${bean.customer}">
        <g:message code="crmSalesProject.summary.with.customer" args="${[bean.customer]}"/>
    </g:if>
    <g:else>
        <span class="label label-important"><g:message code="crmSalesProject.summary.no.customer"/></span>
    </g:else>

    <g:message code="crmSalesProject.summary.value"/>
    <strong>
        <g:formatNumber type="currency" currencyCode="${bean.currency}" number="${bean.value}"
                        maxFractionDigits="0"/>
    </strong>

    <g:if test="${bean.date2}">
        <g:message code="crmSalesProject.summary.date2.label"/> <strong><g:formatDate date="${bean.date2}" type="date" style="long"/></strong>.
    </g:if>
    <g:else>
        <g:message code="crmSalesProject.summary.date.blank"/>.
    </g:else>

    <g:if test="${bean.username}">
        <g:message code="crmSalesProject.summary.username"/>
        <crm:user username="${bean.username}">${name}</crm:user>.
    </g:if>
    <g:else>
        <span class="label label-important"><g:message code="crmSalesProject.summary.username.blank"/></span>
    </g:else>

</p>
