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

<tags:myTag
        name="${sessionScope.name}"
        nationality="${sessionScope.nationality}"
        club="${sessionScope.club}"
        position="${sessionScope.position}"
        numInTeam="${sessionScope.numInTeam}"
        age="${sessionScope.age}"
        height="${sessionScope.height}"
        weight="${sessionScope.weight}"
        foot="${sessionScope.foot}">


    <p><strong>Описание:</strong> ${sessionScope.description}</p>
</tags:myTag>

<form action="confirm" method="post">
    <input type="submit" value="Подтвердить">
</form>
<form action="step3" method="get">
    <input type="submit" value="Назад">
</form>
</body>
</html>
