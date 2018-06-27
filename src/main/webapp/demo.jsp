<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello JSP</h1>

<%! int i = 0; %>
<% int j = 0; %>

<% synchronized (this) {
    i++;
}
%>
<p>i = <% out.println(i); %></p>
<p>j = <%= ++j %>
</p>
<p>Thread id: <%= Thread.currentThread().getId() %>
</p>

<!-- Html comment -->
<%-- jsp comment --%>

</body>
</html>
