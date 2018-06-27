<%@ page import="java.sql.*" %>
<%@ page import="org.itstep.UsefulInterface" %>
<%@ page import="java.io.Writer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/Forms.css">
</head>

<body>

<%! private String errorConnection;%>

<form method="post">
    <label> Name
    <input name="name"/>
    </label>
    <button type="submit">Send</button>
</form>

<p>Http request method: <%= request.getMethod() %></p>


<div class="container">
    <h1>Pleas fill the next form</h1>

    <form action="result.jsp">
        <div class="block">
            <fieldset>
                <legend>Personal Information</legend>
                <table>
                    <tr>
                        <td>
                            <input type="text" name="first_name" placeholder="First Name" autofocus required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="last_name" placeholder="Last Nme"  autofocus required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="email" placeholder="Email"  autofocus required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="phone_number" placeholder="Phone Number"  autofocus required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Female<input type="radio" name="gender" value="female"></label>
                            <label>Male<input type="radio" name="gender" value="male"></label>
                        </td>
                    </tr>
                    <tr>
                        <td>Birth Date</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="birth_date" placeholder="dd/mm/yyyy"></td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                    </tr>
                    <tr>
                        <td>
                            <select name="nation">
                                <option value="Ukrainian">Ukrainian</option>
                                <option value="Bulgarian">Bulgarian</option>
                                <option value="Britisher">Britisher</option>
                                <option value="Pole">Pole</option>
                                <option value="Hispanic">Hispanic</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <div class="block">
            <fieldset>
                <legend>Last Work Position</legend>
                <table>
                    <tr>
                        <td>
                            Company Name
                        </td>

                        <td>
                            <input type="text" name="company">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            From
                        </td>
                        <td>
                            <input type="text" name="form" placeholder="dd/mm/yyyy">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            To
                        </td>
                        <td>
                            <input type="text" name="to" placeholder="dd/mm/yyyy">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <div class="block">
            <fieldset>
                <legend>Computer Skills</legend>
                <table>
                    <tr>
                        <td>
                            Programming Languages
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text">
                        </td>
                        <td>
                            <select name="prog_lang_level">
                                <option value="Beginner">Beginner</option>
                                <option value="Advanced">Advanced</option>
                                <option value="Expert">Expert</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" name="Remove Language">
                        </td>
                        <td>
                            <input type="button" name="Add Language">
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>

        <div class="block">
            <fieldset>
                <legend>Other Skills</legend>
                <table>
                    <tr>
                        <td>
                            Languages
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="lang_name">
                        </td>
                        <td>
                            <select name="comprehension">
                                <option selected>-Comprehension-</option>
                                <option value="Beginner">Beginner</option>
                                <option value="Advanced">Advanced</option>
                                <option value="Expert">Expert</option>
                            </select>
                        </td>
                        <td>
                            <select name="reading">
                                <option selected>-Reading-</option>
                                <option value="Beginner">Beginner</option>
                                <option value="Advanced">Advanced</option>
                                <option value="Expert">Expert</option>
                            </select>
                        </td>
                        <td>
                            <select name="writing">
                                <option selected>-Writing-</option>
                                <option value="Beginner">Beginner</option>
                                <option value="Advanced">Advanced</option>
                                <option value="Expert">Expert</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="button" name="Remove Language">
                        </td>
                        <td>
                            <input type="button" name="Add Language">
                        </td>
                    </tr>
                    <tr>
                        <td>Driver's License</td>
                    </tr>
                    <tr>
                        <td><label>A<input type="checkbox" name="cat_A" value="A"></label></td>
                        <td><label>B<input type="checkbox" name="cat_B" value="B"></label></td>
                        <td><label>C<input type="checkbox" name="cat_C" value="C"></label></td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <div id="send_button">
            <input type="submit" value="Generate CV">
        </div>
    </form>
</div>


<%
    int test;
    final javax.servlet.jsp.JspWriter _out = out;
    UsefulInterface usefulInterface = new UsefulInterface() {
        @Override
        public int doSomething() {
            //pageContext.getOut().println("Demo");
            try {
                _out.println("test");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            return 10;
        }
    };

    out.println("something: " + usefulInterface.doSomething() + "<br/>");

    String name = "default";
    if(request.getMethod().equalsIgnoreCase("POST")){
        name = request.getParameter("name");
    }

    String connection_string;
    String user;
    String pass;
    Connection connection = null;
    try {
        connection_string = config.getServletContext().getInitParameter("db_connection");
        user = config.getServletContext().getInitParameter("db_user");
        pass = config.getServletContext().getInitParameter("db_password");
        connection = DriverManager.getConnection(connection_string, user, pass);
        out.println("<p style='color: green'>Connected</p>");
    } catch (SQLException e) {
        e.printStackTrace();
        errorConnection = e.getLocalizedMessage();
        out.println("<p style='color: red'>"+errorConnection+"</p>");
    }
%>

<p>Request group name: <%= name %></p>

<%
    if(connection != null && !connection.isClosed()) {
        Statement stmt = connection.createStatement();
        String sql = "SELECT id, name FROM `group`";
        ResultSet resultSet = stmt.executeQuery(sql);
    }

%>

</body>
</html>
