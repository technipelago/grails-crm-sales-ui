<%@ page import="grails.plugins.crm.core.DateUtils" defaultCodec="html" %>

<h4>Sammanfattning</h4>

<p>

    Affären <strong>${bean.name}</strong>

    <g:if test="${bean.customer}">
        med <strong>${bean.customer}</strong>
    </g:if>
    <g:else>
        <span class="label label-important">saknar kund!</span>
    </g:else>

    har ett potentiellt värde på
    <strong>
        <g:formatNumber type="currency" currencyCode="${bean.currency}" number="${bean.value}"
                        maxFractionDigits="0"/>
    </strong>

    <g:if test="${bean.date2}">
        och order beräknas till <strong><g:formatDate date="${bean.date2}" type="date" style="long"/></strong>.
    </g:if>
    <g:else>
        men saknar orderdatum.
    </g:else>

    <g:if test="${bean.username}">
        Ansvarig säljare är <crm:user username="${bean.username}">${name}</crm:user>.
    </g:if>
    <g:else>
        <span class="label label-important">Affären saknar ansvarig!</span>
    </g:else>

</p>
