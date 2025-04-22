<%@ page contentType="text/html;charset=UTF-8" %>
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
<p>Возраст: ${sessionScope.age}</p>
<p>Рост: ${sessionScope.height}</p>
<p>Вес: ${sessionScope.weight}</p>
<p>Рабочая нога: ${sessionScope.foot}</p>


<form action="confirm" method="post">
    <input type="submit" value="Подтвердить">
</form>
<form action="step3" method="get">
    <input type="submit" value="Назад">
</form>
</body>
</html>
