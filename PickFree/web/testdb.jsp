<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/pickfreedb">
select name, level, functionality from software
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="row" items="${rs.rows}">
            name ${row.name}<br/>
            level ${row.level}<br/>
            funct ${row.functionality}<br/>
        </c:forEach>
    </body>
</html>
