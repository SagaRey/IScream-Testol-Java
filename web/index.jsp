<%--
  Created by IntelliJ IDEA.
  User: Saga
  Date: 14-3-6
  Time: 下午2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <c:if test="${1<2}" >
      <h1>2</h1>
  </c:if>
  <c:if test="${1>2}" >
      <h1>1</h1>
  </c:if>
  </body>
</html>