<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="header.jsp" />
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Шаг 2</title>
</head>
<body>
<h2>Шаг 2</h2>

<form action="step2" method="post">
    <label>Позиция:</label>
    <select name="position">
        <option value="Нападающий" ${sessionScope.position == 'Нападающий' ? 'selected' : ''}>Нападающий</option>
        <option value="Полузащитник" ${sessionScope.position == 'Полузащитник' ? 'selected' : ''}>Полузащитник</option>
        <option value="Защитник" ${sessionScope.position == 'Защитник' ? 'selected' : ''}>Защитник</option>
        <option value="Вратарь" ${sessionScope.position == 'Вратарь' ? 'selected' : ''}>Вратарь</option>
    </select><br><br>

    <label>Номер в команде:</label>
    <input type="number" name="numInTeam" value="${sessionScope.numInTeam}" required><br><br>

    <label>Описание:</label><br>
    <textarea name="description" rows="4" cols="50">${sessionScope.description}</textarea><br><br>

    <input type="submit" value="Далее">
</form>
<form action="step1" method="get">
    <input type="submit" value="Назад">
</form>


</body>
</html>
