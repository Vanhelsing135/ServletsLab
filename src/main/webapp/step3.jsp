<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Шаг 3</title>
</head>
<body>
<h2>Шаг 3</h2>

<form action="step3" method="post">
    <label>Возраст:</label>
    <input type="number" name="age" value="${sessionScope.age}" required><br><br>

    <label>Рост:</label>
    <input type="number" name="height" value="${sessionScope.height}" required><br><br>

    <label>Вес:</label>
    <input type="number" name="weight" value="${sessionScope.weight}" required><br><br>

    <label>Рабочая нога:</label>
    <select name="foot">
        <option value="Левая" ${sessionScope.position == 'Левая' ? 'selected' : ''}>Левая</option>
        <option value="Правая" ${sessionScope.position == 'Правая' ? 'selected' : ''}>Правая</option>
    </select><br><br>

    <input type="submit" value="Далее">
</form>
<form action="step2" method="get">
    <input type="submit" value="Назад">
</form>
</body>
</html>
