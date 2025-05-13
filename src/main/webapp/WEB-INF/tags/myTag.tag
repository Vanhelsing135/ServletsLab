<%@ tag description="Вывод информации о футболисте в таблице" pageEncoding="UTF-8" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="nationality" required="true" %>
<%@ attribute name="club" required="true" %>
<%@ attribute name="position" required="true" %>
<%@ attribute name="numInTeam" required="true" %>
<%@ attribute name="age" required="true" %>
<%@ attribute name="height" required="true" %>
<%@ attribute name="weight" required="true" %>
<%@ attribute name="foot" required="true" %>

<style>
    .player-info {
        border: 2px solid #444;
        border-radius: 8px;
        padding: 15px;
        width: 400px;
        background-color: #f9f9f9;
        font-family: sans-serif;
    }
    .player-info table {
        width: 100%;
        border-collapse: collapse;
    }
    .player-info td {
        padding: 6px;
        vertical-align: top;
    }
    .player-info td:first-child {
        font-weight: bold;
        width: 50%;
    }
</style>

<div class="player-info">
    <table>
        <tr><td>Имя:</td><td>${name}</td></tr>
        <tr><td>Национальность:</td><td>${nationality}</td></tr>
        <tr><td>Клуб:</td><td>${club}</td></tr>
        <tr><td>Позиция:</td><td>${position}</td></tr>
        <tr><td>Номер в команде:</td><td>${numInTeam}</td></tr>
        <tr><td>Возраст:</td><td>${age}</td></tr>
        <tr><td>Рост:</td><td>${height}</td></tr>
        <tr><td>Вес:</td><td>${weight}</td></tr>
        <tr><td>Рабочая нога:</td><td>${foot}</td></tr>
    </table>

    <div style="margin-top: 10px;">
        <jsp:doBody />
    </div>
</div>
