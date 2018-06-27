<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="/resources/css/Forms.css">
</head>
<body>
<div class="container">
    <div class="block">
        <h1>Result</h1>
        <table class="result">
            <tr>
                <th colspan="2">Personal Information</th>
            </tr>
            <tr>
                <td>First Name</td>
                <td><%=request.getParameter("first_name")%>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><%=request.getParameter("last_name")%>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%=request.getParameter("email")%>
                </td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td><%=request.getParameter("phone_number")%>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><%=request.getParameter("gender")%>
                </td>
            </tr>
            <tr>
                <td>Birth Date</td>
                <td><%=request.getParameter("birth_date")%>
                </td>
            </tr>
            <tr>
                <td>Nationality</td>
                <td><%=request.getParameter("nation")%>
                </td>
            </tr>
        </table>

        <table class="result">
            <tr>
                <th colspan="2">Last Work Position</th>
            </tr>
            <tr>
                <td>Company Name</td>
                <td><%=request.getParameter("company")%>
                </td>
            </tr>
            <tr>
                <td>Fronm</td>
                <td><%=request.getParameter("from")%>
                </td>
            </tr>
            <tr>
                <td>To</td>
                <td><%=request.getParameter("to")%>
                </td>
            </tr>
        </table>
        <table class="result">
            <tr>
                <th colspan="2">Computer Skills</th>
            </tr>
            <tr>
                <td>Programming Languages</td>
                <td>
                    <table class="result">
                        <tr>

                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>Fronm</td>
                <td><%=request.getParameter("from")%>
                </td>
            </tr>
            <tr>
                <td>To</td>
                <td><%=request.getParameter("to")%>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
