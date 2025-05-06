<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="header.jsp" />
<%@ page errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Шаг 1</title>
</head>
<body>
<h2>Шаг 1</h2>

<form action="step1" method="post">
    <label>Имя:</label>
    <input type="text" name="name" value="${sessionScope.name}" required pattern="^[^0-9]+$"><br><br>

    <label>Национальность:</label>
    <select name="nationality">
        <option ${sessionScope.nationality == 'Беларусь' ? 'selected' : ''}>Беларусь</option>
        <option ${sessionScope.nationality == 'Испания' ? 'selected' : ''}>Испания</option>
        <option ${sessionScope.nationality == 'Бразилия' ? 'selected' : ''}>Бразилия</option>
        <option ${sessionScope.nationality == 'Франция' ? 'selected' : ''}>Франция</option>
        <option ${sessionScope.nationality == 'Аргентина' ? 'selected' : ''}>Аргентина</option>
    </select><br><br>

    <label>Клуб:</label>
    <input type="text" name="club" value="${sessionScope.club}" required><br><br>

    <input type="submit" value="Далее">
</form>
</body>
</html>
