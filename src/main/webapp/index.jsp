<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<h1>Calculadora Web</h1>

<form action="HelloServlet" method="post">
    <label>Número 1:</label>
    <input type="text" name="a" />

    <br/><br/>

    <label>Número 2:</label>
    <input type="text" name="b" />

    <br/><br/>

    <button type="submit">Sumar</button>
</form>

<%
    Object resultado = request.getAttribute("resultado");
    if (resultado != null) {
%>
    <h2>Resultado: <%= resultado %></h2>
<%
    }
%>

</body>
</html>

