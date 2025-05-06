<%@ tag description="Вывод информации о футболисте" pageEncoding="UTF-8"%>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="true" %>
<%@ attribute name="label1" required="false" %>
<%@ tag body-content="scriptless" %>

<p>${label}: ${value}</p>
<p>${label1}: <jsp:doBody/></p>