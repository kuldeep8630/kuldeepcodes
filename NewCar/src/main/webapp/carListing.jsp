<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Cars</title>
</head>
<body>
    <h1>Available Cars</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Model</th>
            <th>Price</th>
        </tr>
        <% 
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_booking", "root", "root");
                stmt = conn.createStatement();
                rs = stmt.executeQuery("SELECT * FROM cars WHERE available = true");
                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("model") %></td>
            <td><%= rs.getDouble("price") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try { rs.close(); } catch (Exception e) { }
                try { stmt.close(); } catch (Exception e) { }
                try { conn.close(); } catch (Exception e) { }
            }
        %>
    </table>
</body>
</html>
