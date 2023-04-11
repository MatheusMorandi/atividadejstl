<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="core" %>
<%

    int [] valores = new int[100];
    for(int num = 1; num < 101; num++)
        valores[num-1] = num;
    request.setAttribute("numeros", valores);

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    </head>
    <body>

        <core:forEach var="item" items="${numeros}">

            <core:if test= "${item % 2 != 0}">

                ${item}<br />

            </core:if>

        </core:forEach>
        
    </body>
</html>