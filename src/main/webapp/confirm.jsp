<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page errorPage="errorPage.jsp" %>
<jsp:include page="header.jsp" />
<html>
<head>
    <title>Подтверждение данных</title>
</head>
<body>
<h2>Подтверждение данных</h2>

<p>Имя: ${sessionScope.name}</p>
<p>Национальность: ${sessionScope.nationality}</p>
<p>Клуб: ${sessionScope.club}</p>
<p>Позиция: ${sessionScope.position}</p>
<p>Номер в команде: ${sessionScope.numInTeam}</p>
<%--<p>Описание: ${sessionScope.description}</p>--%>
<p>Возраст: ${sessionScope.age}</p>
<p>Рост: ${sessionScope.height}</p>
<p>Вес: ${sessionScope.weight}</p>
<%--<p>Рабочая нога: ${sessionScope.foot}</p>--%>
<tags:myTag label="Рабочая нога" value="${sessionScope.foot}" label1="Описание">${sessionScope.description}</tags:myTag>

<form action="confirm" method="post">
    <input type="submit" value="Подтвердить">
</form>
<form action="step3" method="get">
    <input type="submit" value="Назад">
</form>
</body>
</html>
