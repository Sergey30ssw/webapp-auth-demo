<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
</head>
<body>
    <c:choose>
        <c:when test="${not empty sessionScope.user}">
            <h1>Welcome, ${sessionScope.user}!</h1>
            <form action="logout" method="post">
                <button type="submit">Logout</button>
            </form>
        </c:when>
        <c:otherwise>
            <h1>Access Denied</h1>
            <p>Please <a href="login.jsp">login</a> to view this page.</p>
        </c:otherwise>
    </c:choose>
</body>
</html>