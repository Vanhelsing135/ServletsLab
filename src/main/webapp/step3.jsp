<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="header.jsp"/>
<%@ page errorPage="errorPage.jsp" %>
<%
    String age = (String) request.getAttribute("age");
    if(age != null && !age.isEmpty()){
        int a = Integer.parseInt(age);
        if(a < 15 || a > 50){
            throw new IllegalArgumentException("Некорректный возраст!");
        }
    }
%>
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
    <input type="number" name="height" value="${sessionScope.height}" required min="120" max="250"><br><br>

    <label>Вес:</label>
    <input type="number" name="weight" value="${sessionScope.weight}" required min="30" max="150"><br><br>

    <label>Рабочая нога:</label>
    <select name="foot">
        <option value="Левая" ${sessionScope.foot == 'Левая' ? 'selected' : ''}>Левая</option>
        <option value="Правая" ${sessionScope.foot == 'Правая' ? 'selected' : ''}>Правая</option>
    </select><br><br>

    <input type="submit" value="Далее">

</form>
<form action="step2" method="get">
    <input type="submit" value="Назад">
</form>
</body>
</html>
