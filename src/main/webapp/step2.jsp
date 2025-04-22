<%@ page contentType="text/html;charset=UTF-8" %>
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

    <input type="submit" value="Далее">
</form>
<form action="step1" method="get">
    <input type="submit" value="Назад">
</form>


</body>
</html>
